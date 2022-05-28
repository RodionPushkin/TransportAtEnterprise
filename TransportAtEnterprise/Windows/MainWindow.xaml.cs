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
using TransportAtEnterprise.Windows.Car;
using TransportAtEnterprise.Windows.Driver;
using TransportAtEnterprise.Windows.Path;

namespace TransportAtEnterprise
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            Classes.Navigate.MainFrame = frame;
            navigation("driver");
        }
        private void navigation(string path)
        {
            if(path == Classes.Navigate.page)
            {
                return;
            }
            search.Text = "";
            if (path == "driver")
            {
                var driverbrush = new ImageBrush();
                var carbrush = new ImageBrush();
                var officebrush = new ImageBrush();
                driverbrush.ImageSource = new BitmapImage(new Uri("../../Resources/driver-active.png", UriKind.Relative));
                carbrush.ImageSource = new BitmapImage(new Uri("../../Resources/car.png", UriKind.Relative));
                officebrush.ImageSource = new BitmapImage(new Uri("../../Resources/office.png", UriKind.Relative));
                driver.Background = driverbrush;
                car.Background = carbrush;
                office.Background = officebrush;
                header.Text = "Водители";
                Classes.Navigate.page = "driver";
                Classes.Navigate.MainFrame.NavigationService.Source = new Uri("/Pages/Driver/Driver.xaml", UriKind.Relative);
            }
            else if(path == "car")
            {
                var driverbrush = new ImageBrush();
                var carbrush = new ImageBrush();
                var officebrush = new ImageBrush();
                driverbrush.ImageSource = new BitmapImage(new Uri("../../Resources/driver.png", UriKind.Relative));
                carbrush.ImageSource = new BitmapImage(new Uri("../../Resources/car-active.png", UriKind.Relative));
                officebrush.ImageSource = new BitmapImage(new Uri("../../Resources/office.png", UriKind.Relative));
                driver.Background = driverbrush;
                car.Background = carbrush;
                office.Background = officebrush;
                header.Text = "Автомобили";
                Classes.Navigate.page = "car";
                Classes.Navigate.MainFrame.NavigationService.Source = new Uri("/Pages/Car/Car.xaml", UriKind.Relative);
            }
            else if(path == "path")
            {
                var driverbrush = new ImageBrush();
                var carbrush = new ImageBrush();
                var officebrush = new ImageBrush();
                driverbrush.ImageSource = new BitmapImage(new Uri("../../Resources/driver.png", UriKind.Relative));
                carbrush.ImageSource = new BitmapImage(new Uri("../../Resources/car.png", UriKind.Relative));
                officebrush.ImageSource = new BitmapImage(new Uri("../../Resources/office-active.png", UriKind.Relative));
                driver.Background = driverbrush;
                car.Background = carbrush;
                office.Background = officebrush;
                header.Text = "Направления";
                Classes.Navigate.page = "path";
                Classes.Navigate.MainFrame.NavigationService.Source = new Uri("/Pages/Path/Path.xaml", UriKind.Relative);
            }
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            navigation("driver");
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            navigation("car");
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            navigation("path");
        }

        private void add_Click(object sender, RoutedEventArgs e)
        {
            if(Classes.Navigate.page == "driver")
            {
                AddDriverWindow addDriverWindow = new AddDriverWindow();
                addDriverWindow.ShowDialog();
            }
            else if (Classes.Navigate.page == "car")
            {
                AddCarWindow addCarWindow = new AddCarWindow();
                addCarWindow.ShowDialog();
            }
            else if (Classes.Navigate.page == "path")
            {
                AddPathWindow addPathWindow = new AddPathWindow();
                addPathWindow.ShowDialog();
            }
        }
    }
}
