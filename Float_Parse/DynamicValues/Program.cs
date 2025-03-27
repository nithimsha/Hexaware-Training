using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DynamicValues
{
    class Program
    {
        static void Main(string[] args)
        {
            var variableValue = 156.15F;

            Console.WriteLine("Type of Variable " + variableValue.GetType());

            dynamic dynamicValue = Console.ReadLine();

            Console.WriteLine("Type if Dynamic Variable " + dynamicValue.GetType());

            Console.ReadKey();
        }
    }
}
