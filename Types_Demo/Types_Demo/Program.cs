using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Types_Demo
{
    class Program
    {
        static void Main(string[] args)
        {
           Int16 mark_social = 98;
            Int32 mark_science = 85;
            Int64 mark_wireless_communication = 35;
            Int64 Total = mark_science + mark_wireless_communication+ mark_social;
            Console.WriteLine(mark_social);
            Console.WriteLine(mark_science);
            Console.WriteLine(mark_wireless_communication);
            Console.WriteLine(Total);
        }
    }
}
