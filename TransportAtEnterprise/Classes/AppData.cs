using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TransportAtEnterprise.Classes
{
    public class AppData
    {
        public static EF.Entities Context { get; } = new EF.Entities();

        public static string searchText { get; set; } = "";
        public static EF.Driver selectedDriver { get; set; } = null;
        public static EF.Car selectedCar { get; set; } = null;
        public static string GetLetters(string text)
        {
            return new String(text.ToCharArray().Where(n => !char.IsDigit(n) && char.IsLetter(n)).ToArray());
        }
        public static string GetNumbers(string text)
        {
            return new String(text.ToCharArray().Where(n => char.IsDigit(n) && !char.IsLetter(n)).ToArray());
        }
        public static string GetMoney(string text)
        {
            return Convert.ToInt32(GetNumbers(text)).ToString("N0");
        }
        public static string GetPhone(string text)
        {
            string phone = GetNumbers(text);
            string formatedPhone = "";
            if (phone.Length == 0)
            {
                return phone;
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
                    formatedPhone = $"+{phone[0]} (";
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
            return formatedPhone;
        }
    }
}
