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
using TransportAtEnterprise.Windows.Path;

namespace TransportAtEnterprise.Pages.Path
{
    /// <summary>
    /// Логика взаимодействия для Path.xaml
    /// </summary>
    public partial class Path : Page
    {
        public Path()
        {
            InitializeComponent();
            lvPath.ItemsSource = Classes.Api.SearchPath(Classes.AppData.searchText);
        }

        private void lvPath_MouseDoubleClick_1(object sender, MouseButtonEventArgs e)
        {
            if (MessageBox.Show("Вы хотите изменить запись?", "Вопрос", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                UpdatePathWindow updatePathWindow = new UpdatePathWindow(lvPath.SelectedItem as EF.Path);
                updatePathWindow.ShowDialog();
                lvPath.ItemsSource = Classes.Api.SearchCar(Classes.AppData.searchText);
                return;
            }
        }

        private void lvPath_KeyUp_1(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Delete)
            {
                if (MessageBox.Show("Вы хотите удалить запись?", "Вопрос", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                {
                    if (Classes.Api.DeleteCar(lvPath.SelectedItem as EF.Car))
                    {
                        MessageBox.Show("Запись удалена", "Информация", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                    else
                    {
                        MessageBox.Show("Ой ой что-то пошло не так", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                    lvPath.ItemsSource = Classes.Api.SearchCar(Classes.AppData.searchText);
                    return;
                }
            }
        }
    }
}
