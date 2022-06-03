using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using TransportAtEnterprise.Windows;
using TransportAtEnterprise.Windows.Car;

namespace TransportAtEnterprise.Pages.Car
{
    /// <summary>
    /// Логика взаимодействия для Car.xaml
    /// </summary>
    public partial class Car : Page
    {
        public Car()
        {
            InitializeComponent();
            lvCar.ItemsSource = Classes.Api.SearchCar(Classes.AppData.searchText);
        }

        private void lvCar_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            if (MessageBox.Show("Вы хотите изменить запись?", "Вопрос", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                UpdateCarWindow updateCarWindow = new UpdateCarWindow(lvCar.SelectedItem as EF.Car);
                updateCarWindow.ShowDialog();
                lvCar.ItemsSource = Classes.Api.SearchCar(Classes.AppData.searchText);
                return;
            }
        }

        private void lvCar_KeyUp(object sender, KeyEventArgs e)
        {
            if(e.Key == Key.Delete)
            {
                if (MessageBox.Show("Вы хотите удалить запись?", "Вопрос", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                {
                    if (Classes.Api.DeleteCar(lvCar.SelectedItem as EF.Car))
                    {
                        MessageBox.Show("Запись удалена", "Информация", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                    else
                    {
                        MessageBox.Show("Ой ой что-то пошло не так", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                    lvCar.ItemsSource = Classes.Api.SearchCar(Classes.AppData.searchText);
                    return;
                }
            }
        }
    }
}
