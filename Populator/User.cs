using System;

namespace Populator
{
    internal class User : IHidratable<User>
    {
        public string username { get; set; }

        public string password { get; set; }

        public string firstname { get; set; }

        public string surname { get; set; }

        public string user_profile { get; set; }

        public string user_id { get; set; }

        public string title { get; set; }

        public string date_created { get; set; }

        public string designation { get; set; }

        public string department { get; set; }

        public string phone { get; set; }

        public string email { get; set; }

        public string User_Group { get; set; }

        public User Hidrate()
        {
            var ran = new Random();
            username = string.Format("User{0}Name{1}", ran.Next(), DateTime.Now.Ticks);
            password = "1234";
            firstname = string.Format("First{0}Name{1}", DateTime.Now.Ticks, ran.Next());
            surname = string.Format("Sur{0}Name{1}", ran.Next(), DateTime.Now.Ticks);
            user_profile = string.Format("Profile{0}", ran.Next(1, 10));
            title = "ATitle";
            department = "ADepartaent";
            phone = ran.Next().ToString();
            email = string.Format("a{0}@b{1}.com", ran.Next(), ran.Next());
            User_Group = string.Format("Group{0}", ran.Next(0, 9));
            return this;
        }
    }
}