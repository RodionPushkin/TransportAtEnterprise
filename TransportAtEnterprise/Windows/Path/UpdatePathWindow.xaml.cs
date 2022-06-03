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
    /// Логика взаимодействия для UpdatePathWindow.xaml
    /// </summary>
    public partial class UpdatePathWindow : Window
    {
        public UpdatePathWindow(EF.Path path)
        {
            InitializeComponent();
        }
    }
}
