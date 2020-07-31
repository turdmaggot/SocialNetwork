using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SocialNetwork.models
{
    public class User
    {
        public string UserID { get; set; }
        public string Username { get; set; }
        public string PassHash { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Gender { get; set; }
        public DateTime DateOfBirth { get; set; }
        public int CountryID { get; set; }
        public string EmailAdd { get; set; }
        public DateTime DateCreated { get; set; }
        public DateTime DateModified { get; set; }
        public bool IsActive { get; set; }
    }
}