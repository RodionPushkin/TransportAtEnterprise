using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
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
        public AddDriverWindow()
        {
            InitializeComponent();
            cbStatus.ItemsSource = Classes.Api.ReadDriverStatus();
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
            if(Classes.AppData.GetNumbers(tbSalary.Text).Length == 0)
            {
                return;
            }
            tbSalary.Text = Convert.ToInt32(Classes.AppData.GetNumbers(tbSalary.Text)).ToString("N0");
            tbSalary.SelectionStart = tbSalary.Text.Length;
        }

        private void tbPhone_KeyUp(object sender, KeyEventArgs e)
        {
            string phone = Classes.AppData.GetNumbers(tbPhone.Text);
            string formatedPhone = "";
            if (phone.Length == 0 || e.Key == Key.Back && phone.Length >= 1)
            {
                return;
            }
            if (phone[0] == '7' || phone[0] == '8' || phone[0] == '9')
            {
                if (phone[0] == '9')
                {
                    formatedPhone = $"+7 ({phone[0]}";
                }
                if (phone[0] == '8')
                {
                    formatedPhone = $"{phone[0]} (";
                }
                if (phone[0] == '7')
                {
                    formatedPhone = $"+{ phone[0]} (";
                }
                if (phone.Length >= 2)
                {
                    formatedPhone += phone[1].ToString();
                }
                if (phone.Length >= 3)
                {
                    formatedPhone += phone[2].ToString();
                }
                if (phone.Length >= 4)
                {
                    formatedPhone += $"{phone[3]}) ";
                }
                if (phone.Length >= 5)
                {
                    formatedPhone += phone[4].ToString();
                }
                if (phone.Length >= 6)
                {
                    formatedPhone += phone[5].ToString();
                }
                if (phone.Length >= 7)
                {
                    formatedPhone += $"{phone[6]}-";
                }
                if (phone.Length >= 8)
                {
                    formatedPhone += phone[7].ToString();
                }
                if (phone.Length >= 9)
                {
                    formatedPhone += $"{phone[8]}-";
                }
                if (phone.Length >= 10)
                {
                    formatedPhone += phone[9].ToString();
                }
                if (phone.Length >= 11)
                {
                    formatedPhone += phone[10].ToString();
                }
            }
            else
            {
                formatedPhone = $"+{phone}";
            }
            tbPhone.Text = formatedPhone;
            tbPhone.SelectionStart = tbPhone.Text.Length;
        }
    }
}
