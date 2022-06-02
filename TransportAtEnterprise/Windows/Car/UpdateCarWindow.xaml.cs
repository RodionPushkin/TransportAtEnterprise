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

namespace TransportAtEnterprise.Windows.Car
{
    /// <summary>
    /// Логика взаимодействия для UpdateCarWindow.xaml
    /// </summary>
    public partial class UpdateCarWindow : Window
    {
        public UpdateCarWindow()
        {
            InitializeComponent();
            cbStatus.ItemsSource = Classes.Api.ReadCarStatus();
            cbStatus.DisplayMemberPath = "Title";
            cbStatus.SelectedIndex = 0;
            cbScore.ItemsSource = new List<int>(){
                1,
                2,
                3,
                4,
                5,
                6,
                7,
                8,
                9,
                10
            };
            cbScore.SelectedIndex = 0;
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            if (tbModel.Text == "")
            {
                MessageBox.Show("Модель не может быть пустым", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            else if (tbTitle.Text == "")
            {
                MessageBox.Show("Название не может быть пустым", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            else if (dpDate.SelectedDate == null)
            {
                MessageBox.Show("Дата выпуска не может быть пустой", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            if (false)
            {
                this.Close();
            }
            else
            {
                MessageBox.Show("Ой ой что-то пошло не так", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
        }
    }
}
