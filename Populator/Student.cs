using System;
using System.Linq;

namespace Populator
{
    internal class Student : IHidratable<Student>
    {
        public long Id { get; set; }

        public string lastname { get; set; }

        public string firstname { get; set; }

        public string midname { get; set; }

        public string gender { get; set; }

        public DateTime birthdate { get; set; }

        public string phone { get; set; }

        public string email { get; set; }

        public string program { get; set; }

        public string level { get; set; }

        public string session { get; set; }

        public DateTime date_created { get; set; }

        public string user_created { get; set; }

        public Student Hidrate()
        {
            var ran = new Random();
            lastname = string.Format("Last{0}Name{1}", ran.Next(0, 999), ran.Next(0, 999));
            firstname = string.Format("First{0}Name{1}", ran.Next(0, 999), ran.Next(0, 999));
            midname = string.Format("Mid{0}Name{1}", ran.Next(0, 999), ran.Next(0, 999));
            gender = ran.NextDouble() / 2 > 0.5 ? "Male" : "Female";
            birthdate = DateTime.Now.AddDays(-1 * ran.Next(1, 9999)).Date;
            phone = ran.Next().ToString();
            email = string.Format("a{0}@b{1}.com", ran.Next(0, 9999), ran.Next(0, 99999));
            program = "A";
            level = "100";
            session = "A";
            return this;
        }
    }
}