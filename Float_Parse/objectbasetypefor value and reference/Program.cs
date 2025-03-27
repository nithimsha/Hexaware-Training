using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace objectbasetypefor_value_and_reference
{
    class Program
    {
        static void Main(string[] args)
        {
            Int64 number = 1258;
            string name = "abc";

            Console.WriteLine("Object method result with Int64 variable");

            Console.WriteLine("\nConvert to String \t {0}", number.ToString());

            Console.WriteLine("GetHash code to get hash code of number \t" +
                number.GetHashCode());
            Console.WriteLine("Get type of variable \t" + number.GetType());
            Console.WriteLine("compare the value \t"
                + number.Equals(number));

            Console.WriteLine("\nObject method result with String variable");

            Console.WriteLine("\nConvert to String \t {0}", name.ToString());

            Console.WriteLine("GetHash code to get hash code of number \t" +
                name.GetHashCode());
            Console.WriteLine("Get type of variable \t" + name.GetType());
            Console.WriteLine("compare the value \t"
                + number.Equals("xyz"));

            Console.ReadKey();
        }
    }
}
