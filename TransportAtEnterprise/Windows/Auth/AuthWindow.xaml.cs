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

namespace TransportAtEnterprise.Windows.Auth
{
    /// <summary>
    /// Логика взаимодействия для AuthWindow.xaml
    /// </summary>
    public partial class AuthWindow : Window
    {
        public AuthWindow()
        {
            InitializeComponent();
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            if (tbemail.Text.Length == 0)
            {
                MessageBox.Show("Почта не может быть пустой", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            if (tbpass.Password.Length == 0)
            {
                MessageBox.Show("Пароль не может быть пустым", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            if (Classes.Api.Auth(tbemail.Text.ToString(), tbpass.Password.ToString()))
            {
                MainWindow win = new MainWindow();
                this.Close();
                win.Show();
            }
            else
            {
                MessageBox.Show("Неверная почта или пароль", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
