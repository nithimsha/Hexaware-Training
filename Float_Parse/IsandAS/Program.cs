using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IsandAS
{
    class Program
    {
        static void Main(string[] args)
        {
            dynamic average = 156.89F;

            Boolean inttype = average is Int32;

            bool floattype = average is float;

            Boolean stringtype =average is string;

            Boolean booltype = average is Boolean;

            if (inttype == true || inttype == false)
                {
                Console.WriteLine("Is integer type " + inttype);
                }
            if (floattype == true || floattype == false)
            {
                Console.WriteLine("Is Float Type - " + floattype);
            }
            if (stringtype == true || stringtype == false)
            {
                Console.WriteLine("Is String Type - " + stringtype);
            }
            if (booltype == true || booltype == false)
            {
                Console.WriteLine("Is Boolean Type - " + booltype);
            }
            if (average is char)
            {
                Console.WriteLine("Is it Char type " + average is char);
            }



            Console.ReadKey();
        
        }
    }
}
