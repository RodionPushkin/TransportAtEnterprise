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
using TransportAtEnterprise.Windows.Driver;

namespace TransportAtEnterprise.Pages.Driver
{
    /// <summary>
    /// Логика взаимодействия для Driver.xaml
    /// </summary>
    public partial class Driver : Page
    {
        public Driver()
        {
            InitializeComponent();
            lvDriver.ItemsSource = Classes.Api.SearchDriver(Classes.AppData.searchText);
        }

        private void lvDriver_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            if (MessageBox.Show("Вы хотите изменить запись?", "Вопрос", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                UpdateDriverWindow updateDriverWindow = new UpdateDriverWindow(lvDriver.SelectedItem as EF.Driver);
                updateDriverWindow.ShowDialog();
                lvDriver.ItemsSource = Classes.Api.ReadDriver();
                return;
            }
        }

        private void lvDriver_KeyUp(object sender, KeyEventArgs e)
        {
            if(e.Key == Key.Delete)
            {
                if (MessageBox.Show("Вы хотите удалить запись?", "Вопрос", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                {
                    if (Classes.Api.DeleteDriver(lvDriver.SelectedItem as EF.Driver))
                    {
                        MessageBox.Show("Запись удалена", "Информация", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                    else
                    {
                        MessageBox.Show("Ой ой что-то пошло не так", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                    lvDriver.ItemsSource = Classes.Api.SearchDriver(Classes.AppData.searchText);
                    return;
                }
            }
        }
    }
}
