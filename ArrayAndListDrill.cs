using System;
using System.Collections.Generic;


namespace ArraysAndLists
{
    class Program
    {
        static void Main()
        {
            string[] NameArray = { "Paul", "Peter", "John", "Jim", "Ed", "Verikahn", "Jamal" };
            Console.WriteLine("pick an Array 0-6 and type is below.");
            int pick = Convert.ToInt32(Console.ReadLine());
            bool canCount1 = pick <= 6;

            if (canCount1)
            {
                Console.WriteLine(NameArray[pick]);
            }

            else if (!canCount1)
            {
                Console.WriteLine("Please pick a number between 0-6 and try again.");

            }

            Console.ReadLine();




            int[] intArray = { 1, 3, 44, 59, 10044, 56932, 2444 };
            Console.WriteLine("Pick another array 0-6 below");
            int pick2 = Convert.ToInt32(Console.ReadLine());
            bool canCount2 = pick2 <= 6;
            
            if (canCount2)
            {
                Console.WriteLine(intArray[pick2]);
            }

            else if (!canCount2)
            {
                Console.WriteLine("Please pick a number between 0-6 and try again.");

            }

            Console.ReadLine();

            List<string> stringList = new List<string>();
            stringList.Add("Hello.0");
            stringList.Add("Hello.1");
            stringList.Add("Hello.2");
            stringList.Add("Hello.3");
            stringList.Add("Hello.4");
            stringList.Add("Hello.5");
            stringList.Add("Hello.6");

            Console.Write("Pick another index out of the list. Please enter a value 0-6.");
            int list1 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine(stringList[list1]);
            Console.ReadLine();




        }
    }
}
