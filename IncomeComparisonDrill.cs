using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace incomeComparison
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Anonymous Income Comparison Program");
            Console.ReadLine();

            //person 1 enter hourly rate
            Console.WriteLine("Person 1");
            Console.WriteLine("Please enter your Hourly rate");
            string HRP1 = Console.ReadLine();
            double hourRate1 = Convert.ToDouble(HRP1);
            Console.WriteLine(hourRate1);
            Console.ReadLine();

            //person 1 enter Hours worked per week
            Console.WriteLine("Person 1 please enter how many hours you work per week");
            string HoursWorked1 = Console.ReadLine();
            double HourWorked1 = Convert.ToDouble(HoursWorked1);
            Console.WriteLine(HourWorked1);
            Console.ReadLine();

            //Person 2 enter hourly Rate
            Console.WriteLine("Person 2");
            Console.WriteLine("Please enter your Hourly rate");
            string HRP2 = Console.ReadLine();
            double hourRate2 = Convert.ToDouble(HRP2);
            Console.WriteLine(hourRate2);
            Console.ReadLine();

            //person 2 enter Hours worked per week
            Console.WriteLine("Person 2 please enter how many hours you work per week");
            string HoursWorked2 = Console.ReadLine();
            double HourWorked2 = Convert.ToDouble(HoursWorked2);
            Console.WriteLine(HourWorked2);
            Console.ReadLine();

            //Annual Salary of Person 1
            double annualHours1 = HourWorked1 * 52;
            double annualSal1 = hourRate1 * annualHours1;
            Console.WriteLine("Annual Salary of Person 1: ");
            Console.WriteLine(annualSal1);
            Console.ReadLine();

            //Annual Salary of Person 2
            double annualHours2 = HourWorked2 * 52;
            double annualSal2 = hourRate2 * annualHours2;
            Console.WriteLine("Annual Salary of Person 2 ");
            Console.WriteLine(annualSal2);
            Console.ReadLine();

            //Comparison
            bool comparison = annualSal1 > annualSal2;
            Console.WriteLine("Does Person 1 make more money than person 2?");
            Console.WriteLine(comparison.ToString());
            Console.ReadLine();


        }
    }
}
