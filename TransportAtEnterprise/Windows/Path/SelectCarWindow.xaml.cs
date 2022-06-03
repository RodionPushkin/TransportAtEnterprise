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
using System.Windows.Shapes;

namespace TransportAtEnterprise.Windows.Path
{
    /// <summary>
    /// Логика взаимодействия для SelectCarWindow.xaml
    /// </summary>
    public partial class SelectCarWindow : Window
    {
        public SelectCarWindow()
        {
            InitializeComponent();
            lvCar.ItemsSource = Classes.Api.SearchCar(Classes.AppData.searchText);
        }

        private void search_TextChanged(object sender, TextChangedEventArgs e)
        {
            Classes.AppData.searchText = search.Text;
            Classes.Navigate.MainFrame.NavigationService.Refresh();
        }

        private void lvCar_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            Classes.AppData.selectedCar = lvCar.SelectedItem as EF.Car;
        }
    }
}
