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

namespace TransportAtEnterprise.Windows.Driver
{
    /// <summary>
    /// Логика взаимодействия для AddDriverWindow.xaml
    /// </summary>
    public partial class AddDriverWindow : Window
    {
        public string phone = "";
        public string idDriver = "";
        public string FirstName = "";
        public string LastName = "";
        public string Patrinymic = "";
        public decimal Salary = 0;
        public AddDriverWindow()
        {
            InitializeComponent();
            cbStatus.ItemsSource = Classes.AppData.Context.DriverStatus.OrderBy(i => i.ID).ToList();
            cbStatus.DisplayMemberPath = "Title";
            cbStatus.SelectedIndex = 0;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            if (tbFirstName.Text == "")
            {
                MessageBox.Show("Имя не может быть пустым", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            else if (tbLastName.Text == "")
            {
                MessageBox.Show("Фамилия не может быть пустой", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            else if (tbIDDriver.Text == "")
            {
                MessageBox.Show("Номер водительских прав не может быть пустым", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            else if (tbParonymic.Text == "")
            {
                MessageBox.Show("Отчество не может быть пустым", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            else if (tbPhone.Text == "")
            {
                MessageBox.Show("Телефон не может быть пустым", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            else if (tbSalary.Text == "")
            {
                MessageBox.Show("Зарплата не может быть пустой", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            else if (dpDate.SelectedDate == null)
            {
                MessageBox.Show("Дата рождения не может быть пустой", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            else if (dpDateDriver.SelectedDate == null)
            {
                MessageBox.Show("Дата выпуска прав не может быть пустой", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            if (Classes.Api.CreateDriver(null))
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
