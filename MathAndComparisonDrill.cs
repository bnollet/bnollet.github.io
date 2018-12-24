using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MathAndComparisonOperators
{
    class Program
    {
        static void Main(string[] args)
        {
            //int total = 5 + 10;
            //Console.WriteLine("five plus ten equals: " + total.ToString());
            //Console.ReadLine();

            Console.WriteLine("please enter a number");
            String input = Console.ReadLine();
            int multiplier = Convert.ToInt32(input);
            int Product = multiplier * 50;
            Console.WriteLine("your number multiplied by 50 equals: " + Product);
            Console.ReadLine();

            Console.WriteLine("Give me another number please");
            String secondInput = Console.ReadLine();
            int additionInput = Convert.ToInt32(secondInput);
            int answer = additionInput + 25;
            Console.WriteLine("Your number plus 25 equals " + answer);
            Console.ReadLine();

            Console.WriteLine("Another Number please.....");
            String divInput = Console.ReadLine();
            double userInput = Convert.ToDouble(divInput);
            double quotent = userInput / 12.5;
            Console.WriteLine("Your number divided by 12.5 equals: " + quotent);
            Console.ReadLine();

            Console.WriteLine("anotha one.......");
            string stringInput = Console.ReadLine();
            double number = Convert.ToDouble(stringInput);

            bool greaterThan = number > 50;
            Console.WriteLine("Your number is greater than 50.... " + greaterThan.ToString());
            Console.ReadLine();

            Console.WriteLine("Alright last number");
            string inputRemainder = Console.ReadLine();
            double input = Convert.ToDouble(inputRemainder);
            double remainder = input % 7;
            Console.WriteLine("When your number is divided by 7 you get the remainder of: " + remainder);
            Console.ReadLine();







        }
    }
}
