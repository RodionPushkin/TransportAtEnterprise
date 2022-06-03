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
    /// Логика взаимодействия для UpdateDriverWindow.xaml
    /// </summary>
    public partial class UpdateDriverWindow : Window
    {
        EF.Driver Driver = null;
        public UpdateDriverWindow(EF.Driver driver)
        {
            InitializeComponent();
            Driver = driver;
            cbStatus.ItemsSource = Classes.Api.ReadDriverStatus();
            cbStatus.DisplayMemberPath = "Title";
            cbStatus.SelectedIndex = driver.IDStatus - 1;
            tbFirstName.Text = driver.FirstName;
            tbIDDriver.Text = driver.DriverLicense;
            tbLastName.Text = driver.LastName;
            tbParonymic.Text = driver.Patronymic;
            tbPhone.Text = Classes.AppData.GetPhone(driver.Phone);
            tbSalary.Text = Classes.AppData.GetMoney(driver.Salary.ToString());
            tbIDDriver.Text = driver.DriverLicense;
            dpDate.SelectedDate = driver.Birthday;
            dpDateDriver.SelectedDate = driver.DriverLicenseFinish;
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
                MessageBox.Show("Дата окончания водительских прав не может быть пустой", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            if (Classes.Api.UpdateDriver(Driver,tbFirstName.Text,tbLastName.Text,tbParonymic.Text,Convert.ToInt32(Classes.AppData.GetNumbers(tbSalary.Text)),tbPhone.Text,Convert.ToDateTime(dpDate.SelectedDate), Convert.ToDateTime(dpDateDriver.SelectedDate),tbIDDriver.Text,Convert.ToInt32(cbStatus.SelectedIndex) + 1))
            {
                this.Close();
                MessageBox.Show("Запись изменена", "Информация", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            else
            {
                MessageBox.Show("Ой ой что-то пошло не так", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
        }

        private void tbFirstName_TextChanged(object sender, TextChangedEventArgs e)
        {
            tbFirstName.Text = Classes.AppData.GetLetters(tbFirstName.Text);
            tbFirstName.SelectionStart = tbFirstName.Text.Length;
        }

        private void tbLastName_TextChanged(object sender, TextChangedEventArgs e)
        {
            tbLastName.Text = Classes.AppData.GetLetters(tbLastName.Text);
            tbLastName.SelectionStart = tbLastName.Text.Length;
        }

        private void tbParonymic_TextChanged(object sender, TextChangedEventArgs e)
        {
            tbParonymic.Text = Classes.AppData.GetLetters(tbParonymic.Text);
            tbParonymic.SelectionStart = tbParonymic.Text.Length;
        }

        private void tbIDDriver_TextChanged(object sender, TextChangedEventArgs e)
        {
            tbIDDriver.Text = Classes.AppData.GetNumbers(tbIDDriver.Text);
            tbIDDriver.SelectionStart = tbIDDriver.Text.Length;
        }

        private void tbSalary_TextChanged(object sender, TextChangedEventArgs e)
        {
            string text = Classes.AppData.GetNumbers(tbSalary.Text);
            if (text.Length == 0)
            {
                tbSalary.Text = text;
                return;
            }
            tbSalary.Text = Classes.AppData.GetMoney(text);
            tbSalary.SelectionStart = tbSalary.Text.Length;
        }

        private void tbPhone_KeyUp(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Back)
            {
                return;
            }
            tbPhone.Text = Classes.AppData.GetPhone(tbPhone.Text);
            tbPhone.SelectionStart = tbPhone.Text.Length;
        }
    }
}
