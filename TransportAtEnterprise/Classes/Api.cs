using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace TransportAtEnterprise.Classes
{
    class Api
    {
        public static bool CreateDriver(string firstName, string lastName, string patronymic, int salary, string phone, DateTime birthday, DateTime dateOfEndDriverLicence, string idDriverLicence, int idStatus)
        {
            try
            {
                EF.Driver Driver = new EF.Driver();
                Driver.FirstName = firstName;
                Driver.LastName = lastName;
                Driver.Phone = Classes.AppData.GetPhone(phone);
                Driver.Salary = salary;
                Driver.Birthday = birthday;
                Driver.IDStatus = Classes.AppData.Context.DriverStatus.Where(i => i.ID == idStatus).ToList().FirstOrDefault().ID;
                Driver.Patronymic = patronymic;
                Driver.DriverLicenseFinish = dateOfEndDriverLicence;
                Driver.DriverLicense = idDriverLicence;
                Classes.AppData.Context.Driver.Add(Driver);
                Classes.AppData.Context.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public static List<EF.Driver> ReadDriver()
        {
            return Classes.AppData.Context.Driver.Where(i => i.IsDeleted == false).OrderBy(i => i.ID).ToList();
        }
        public static bool UpdateDriver(EF.Driver Driver,string firstName, string lastName, string patronymic, int salary, string phone, DateTime birthday, DateTime dateOfEndDriverLicence, string idDriverLicence, int idStatus)
        {
            try
            {
                Driver.FirstName = firstName;
                Driver.LastName = lastName;
                Driver.Phone = Classes.AppData.GetPhone(phone);
                Driver.Salary = salary;
                Driver.Birthday = birthday;
                Driver.IDStatus = Classes.AppData.Context.DriverStatus.Where(i => i.ID == idStatus).ToList().FirstOrDefault().ID;
                Driver.Patronymic = patronymic;
                Driver.DriverLicenseFinish = dateOfEndDriverLicence;
                Driver.DriverLicense = idDriverLicence;
                Classes.AppData.Context.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public static bool DeleteDriver(EF.Driver Driver)
        {
            try
            {
                Driver.IsDeleted = true;
                Classes.AppData.Context.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public static bool CreatePath(List<EF.Path> Path)
        {
            if (true)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public static List<EF.Path> ReadPath()
        {
            return Classes.AppData.Context.Path.Where(i => i.IsDeleted == false).OrderBy(i => i.ID).ToList();
        }
        public static bool UpdatePath(List<EF.Path> Path)
        {
            if (true)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public static bool DeletePath(EF.Path Path)
        {
            try
            {
                Path.IsDeleted = true;
                Classes.AppData.Context.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public static bool CreateCar(string name, string model, DateTime Birthday, int idScore, int idStatus)
        {
            try
            {
                EF.Car Car = new EF.Car();
                Car.Title = name;
                Car.Model = model;
                Car.IDStatus = Classes.AppData.Context.CarStatus.Where(i => i.ID == idStatus).ToList().FirstOrDefault().ID;
                Car.Condition = idScore;
                Car.DateOfRelease = Birthday;
                Classes.AppData.Context.Car.Add(Car);
                Classes.AppData.Context.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public static List<EF.Car> ReadCar()
        {
            return Classes.AppData.Context.Car.Where(i => i.IsDeleted == false).OrderBy(i => i.ID).ToList();
        }
        public static bool UpdateCar(EF.Car Car, string name, string model, DateTime Birthday, int idScore, int idStatus)
        {
            try
            {
                Car.Title = name;
                Car.Model = model;
                Car.IDStatus = Classes.AppData.Context.CarStatus.Where(i => i.ID == idStatus).ToList().FirstOrDefault().ID;
                Car.Condition = idScore;
                Car.DateOfRelease = Birthday;
                Classes.AppData.Context.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public static bool DeleteCar(EF.Car Car)
        {
            try
            {
                Car.IsDeleted = true;
                Classes.AppData.Context.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public static bool Auth(string login, string password)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] hashenc = md5.ComputeHash(Encoding.UTF8.GetBytes("salt"+password+"rodion4ik"));
            string result = "";
            foreach (var b in hashenc)
            {
                result += b.ToString("x2");
            }
            if (AppData.Context.User.Where(i => i.Email == login && i.Token == result).Count() == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public static List<EF.Car> SearchCar(string text)
        {
            return Classes.AppData.Context.Car.Where(i => i.Title.Contains(text) || i.Model.Contains(text)).Where(i => i.IsDeleted == false).OrderBy(i => i.ID).ToList();
        }
        public static List<EF.Driver> SearchDriver(string text)
        {
            return Classes.AppData.Context.Driver.Where(i => i.FirstName.Contains(text) || i.LastName.Contains(text) || i.Patronymic.Contains(text) || i.DriverLicense.Contains(text)).Where(i => i.IsDeleted == false).OrderBy(i => i.ID).ToList();
        }
        public static List<EF.Path> SearchPath(string text)
        {
            return Classes.AppData.Context.Path.Where(i => i.Address.Contains(text)).Where(i => i.IsDeleted == false).OrderBy(i => i.ID).ToList();
        }
        public static List<EF.CarStatus> ReadCarStatus()
        {
            return Classes.AppData.Context.CarStatus.OrderBy(i => i.ID).ToList();
        }
        public static List<EF.DriverStatus> ReadDriverStatus()
        {
            return Classes.AppData.Context.DriverStatus.OrderBy(i => i.ID).ToList();
        }
    }
}
