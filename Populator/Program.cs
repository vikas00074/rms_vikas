using Data;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Populator
{
    class Program
    {
        static void Main(string[] args)
        {
            ConsoleKeyInfo lastPressedKey;

            do
            {
                Console.Clear();

                Console.WriteLine("Elija una opcion:");

                Console.WriteLine("1. Agregar 15 usuarios.");
                Console.WriteLine("1. Agregar 15 estudiantes.");

                Console.WriteLine("X. Salir.");

                lastPressedKey = Console.ReadKey(true);

                switch (lastPressedKey.Key)
                {
                    case ConsoleKey.D0:
                        break;
                    case ConsoleKey.D1:
                        PopulateUsers();
                        break;
                    case ConsoleKey.D2:
                        PopulateStudents();
                        break;
                    case ConsoleKey.D3:
                        break;
                    case ConsoleKey.D4:
                        break;
                    case ConsoleKey.D5:
                        break;
                    case ConsoleKey.D6:
                        break;
                    case ConsoleKey.D7:
                        break;
                    case ConsoleKey.D8:
                        break;
                    case ConsoleKey.D9:
                        break;
                    default:
                        break;
                }
            } while (lastPressedKey.Key != ConsoleKey.X);
        }

        private static void PopulateStudents()
        {
            var factory = new EntityFactory<Student>();
            IEnumerable<Student> students = factory.Create(15);

            using (var ctx = new ModelContext())
            {
                ctx.students.AddRange(students
                    .Select(x => new Student
                    {
                        birthdate = x.birthdate,
                        email = x.email,
                        firstname = x.firstname,
                        gender = x.gender,
                        lastname = x.lastname,
                        level = x.level,
                        midname = x.midname,
                        phone = x.phone,
                        program = x.program,
                        session = x.session
                    }));

                ctx.SaveChanges();
            }
        }

        private static void PopulateUsers()
        {
            var factory = new EntityFactory<User>();
            IEnumerable<User> users = factory.Create(15);

            using (var ctx = new ModelContext())
            {
                ctx.users.AddRange(users
                    .Select(x => new User
                    {
                        department = x.department,
                        designation = x.designation,
                        password = x.password,
                        surname = x.surname,
                        title = x.title,
                        username = x.username,
                        User_Group = x.User_Group,
                        user_profile = x.user_profile,
                        email = x.email,
                        firstname = x.firstname,
                        phone = x.phone,
                    }));

                ctx.SaveChanges();
            }
        }
    }
}
