using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TransportAtEnterprise.EF
{
    public partial class Driver
    {
        public string phoneNumber { get => Classes.AppData.GetPhone(Phone); }
        public string FIO { get => FirstName + " " + LastName + " " +Patronymic; }
        public string salaryFormated { get => Classes.AppData.GetMoney(Salary.ToString()); }
    }
}
