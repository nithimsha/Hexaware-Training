using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Float_Parse
{
    class Program
    {
        static void Main(string[] args)
        {
            float number = 123.15F;
            double number2 = 5689.26D;
            decimal number3 = 89325.15m;

            Console.WriteLine("Input values for all floating type of variables");
            //parsing using convert class
            string numberFloat = Console.ReadLine();
            number = Convert.ToSingle(numberFloat);

            //parsing using parse method
            string numberdouble = Console.ReadLine();
            number2 = Double.Parse(numberdouble);

            //parsing using parse method
            string numberDecimal = Console.ReadLine();
            number3 = Decimal.Parse(numberDecimal);

            int numer5 = Int16.Parse(Console.ReadLine());
            Int32 number6 = Int32.Parse(Console.ReadLine());
            Int64 number7 = Convert.ToInt64(Console.ReadLine());

            //parsing string

            Console.WriteLine(number);
            Console.WriteLine(number2);
            Console.WriteLine(number3);

            Console.ReadKey();
        }
    }
}
