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
        public static bool CreateDriver(List<EF.Driver> Driver)
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
        public static List<EF.Driver> ReadDriver()
        {
            return Classes.AppData.Context.Driver.Where(i => i.IsDeleted == false).ToList();
        }
        public static bool UpdateDriver(List<EF.Driver> Driver)
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
        public static bool DeleteDriver(List<EF.Driver> Driver)
        {
            return false;
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
            return Classes.AppData.Context.Path.Where(i => i.IsDeleted == false).ToList();
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
        public static bool DeletePath(List<EF.Path> Path)
        {
            return false;
        }
        public static bool CreateCar(List<EF.Car> Car)
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
        public static List<EF.Car> ReadCar()
        {
            return Classes.AppData.Context.Car.Where(i => i.IsDeleted == false).ToList();
        }
        public static bool UpdateCar(List<EF.Car> Car)
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
        public static bool DeleteCar(List<EF.Car> Car)
        {
            return false;
        }
        public static bool Auth(string login, string password)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] hashenc = md5.ComputeHash(Encoding.UTF8.GetBytes(password));
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
            return Classes.AppData.Context.Car.Where(i => i.Title.Contains(text) || i.Model.Contains(text)).ToList();
        }
        public static List<EF.Driver> SearchDriver(string text)
        {
            return Classes.AppData.Context.Driver.Where(i => i.FirstName.Contains(text) || i.LastName.Contains(text) || i.Patronymic.Contains(text) || i.IDDriverLicense.Contains(text)).ToList();
        }
        public static List<EF.Path> SearchPath(string text)
        {
            return Classes.AppData.Context.Path.Where(i => i.Address.Contains(text)).ToList();
        }
    }
}
