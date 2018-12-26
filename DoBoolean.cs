﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoAndWhileDrill
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Pick a Number");
            int number = Convert.ToInt32(Console.ReadLine());
            bool pickedNumber = number == 13;

            do
            {
                switch (number)
                {
                    case 32:
                        Console.WriteLine("You Picked 32. Try again.");
                        Console.WriteLine("Pick another number.");
                        number = Convert.ToInt32(Console.ReadLine());
                        break;

                    case 29:
                        Console.WriteLine("You Picked 29. Try again.");
                        Console.WriteLine("Pick another number.");
                        number = Convert.ToInt32(Console.ReadLine());
                        break;

                    default:
                        Console.WriteLine("Wrong Number");
                        Console.WriteLine("Pick another number");
                        number = Convert.ToInt32(Console.ReadLine());
                        break;

                    case 13:
                        Console.WriteLine("You Picked 13 and that is the right number! Good Job!");
                        pickedNumber = true;
                        break;
                }

            }


            while (!pickedNumber);
            Console.ReadLine();
            
        }
    }
}
