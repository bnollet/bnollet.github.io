using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BranchingDrill
{
    class Program
    {
        static void Main(string[] args)
        {

            Console.WriteLine("Wlecome to Package Express. Please follow the Instructions Below.");
            Console.WriteLine("Please enter your package weight");
            double weight = Convert.ToDouble(Console.ReadLine());

            if (weight > 50)
            {
                Console.WriteLine("Package too heavy to be shipped via Package Express. Have a good day.");
                Console.ReadLine();

            }
            else if (weight < 50) 
            {
                Console.WriteLine("Please enter the package Height.");
                double height = Convert.ToDouble(Console.ReadLine());
                Console.WriteLine("Please enter the package Length");
                double length = Convert.ToDouble(Console.ReadLine());


                double sum = (height + length);


                if (sum > 50)
                {
                    Console.WriteLine("Package too big to be shipped via Package Express.");
                    Console.ReadLine();
                }


                else if (sum < 50)
                {
                    double total = sum * weight / 100;
                    Console.WriteLine("The total for your package is");
                    Console.WriteLine(total);
                    Console.ReadLine();
                }




            }

  
       
        
            }
    }
}
