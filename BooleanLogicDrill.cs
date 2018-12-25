using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BooleanLogicDrill
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("What is your age?");
            string age = Console.ReadLine();
            int age1 = Convert.ToInt32(age);

            Console.WriteLine("Have you ever had a DUI? Please answer true or false");
            String DUI = Console.ReadLine();
            bool DUI1 = Convert.ToBoolean(DUI);

            Console.WriteLine("How many speeding tickets do you have?");
            string tickets = Console.ReadLine();
            int ticket1 = Convert.ToInt32(tickets);

            Console.WriteLine("Qualified?");
            bool qualified = (age1 >= 15 && ticket1 < 3 && !DUI1);
            Console.WriteLine(qualified);
            Console.ReadLine();
        }
    }
}
