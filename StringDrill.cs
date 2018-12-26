using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace stringsDrill
{
    class Program
    {
        static void Main(string[] args)
        {
            string one = (" this is the first string,");
            string two = (" this is my second string,");
            string three = (" this is my third string.");

            Console.WriteLine("Here is some Concatenating for ya: " + one + two + three);
            Console.ReadLine();

            string lower = ("let's convert this sentance to uppercase: ");
            Console.WriteLine(lower);
            Console.ReadLine();

            lower = lower.ToUpper();
            Console.WriteLine(lower);
            Console.ReadLine();

            StringBuilder sb1 = new StringBuilder();
            sb1.Append("my name is Brenden.");
            
         

            StringBuilder sb2 = new StringBuilder();
            sb2.Append("And this is the most interesting story in the world.");
          

            StringBuilder sb3 = new StringBuilder();
            sb3.Append("I need to make it clear that this story is not for the weak hearted and may blow the average person's mind.");
           
      

            StringBuilder sb4 = new StringBuilder();
            sb4.Append("After hearing this story J. R. R. Tolkien said and I Quote, \"I now realize how much of an amature I am and I am never writing again\" Crazy right?");


            Console.WriteLine(sb1);
            Console.WriteLine(sb2);
            Console.WriteLine(sb3);
            Console.WriteLine(sb4);
            Console.ReadLine();







        }
    }
}
