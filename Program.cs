using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VariablesAndDataTypes
{
    class Program
    {
        static void Main(string[] args)
        {
            // this is a simple program
            //Console.WriteLine("what is your name?");
            //String yourName = Console.ReadLine();
            //Console.WriteLine("Your name is: " + yourName);
            //Console.ReadLine();

            //Console.WriteLine("What is your favolrite number?");
            //string favoriteNumber = Console.ReadLine();
            //int favNum = Convert.ToInt32(favoriteNumber);
            //int total = favNum + 5;
            //Console.WriteLine("Your Favorite number plsu 5 is: " + total);
            //Console.ReadLine();

            Console.WriteLine("The Tech Academy");
            Console.WriteLine("Student Daily Report");
            Console.ReadLine();

            Console.WriteLine("What course are you on?");
            string course = Console.ReadLine();
            Console.Write("You are on Course: " + course);
            Console.ReadLine();

            Console.WriteLine("What page number are you on?");
            string pageNumber = Console.ReadLine();
            int page = Convert.ToInt32(pageNumber);
            Console.WriteLine("you are on page Number: " + page);
            Console.ReadLine();


            Console.WriteLine("Do you need help with anything? Please answer true or false.");
            bool help = true;
            string helpStatus = Convert.ToString(help);
            Console.WriteLine(helpStatus);
            Console.ReadLine();

            Console.WriteLine("were there any positive experiences you'd like to share? Please be specific");
            string feedback = Console.ReadLine();
            Console.WriteLine(feedback);
            Console.ReadLine();


            Console.WriteLine("Is there any other feedback you'd like to provide? Please be specific");
            string moreFeedback = Console.ReadLine();
            Console.WriteLine(moreFeedback);
            Console.ReadLine();

            Console.WriteLine("How many hours did you study today?");
            string studyHours = Console.ReadLine();
            int hours = Convert.ToInt32(studyHours);
            Console.WriteLine("you have studied " + hours + " hours today");
            Console.ReadLine();




        }
    }
}
