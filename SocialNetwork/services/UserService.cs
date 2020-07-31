using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using SocialNetwork.models;

namespace SocialNetwork.services
{
    public static class UserService
    {
        private static string connString = ConfigurationManager.ConnectionStrings["conn"].ToString();

        public static string CreateUser(
            string Username, 
            string Password, 
            string FirstName,
            string LastName,
            string Gender,
            DateTime DateOfBirth,
            int CountryID,
            string EmailAdd) 
        {
            try
            {
                string newUserID = null;
                string passwordHash = BCrypt.Net.BCrypt.HashPassword(Password.Trim());

                SqlParameter[] parameters = {
                    new SqlParameter("@Username", Username.Trim()),
                    new SqlParameter("@PassHash", passwordHash),
                    new SqlParameter("@FirstName", FirstName.Trim()),
                    new SqlParameter("@LastName", LastName.Trim()),
                    new SqlParameter("@Gender", Gender.Trim()),
                    new SqlParameter("@DateOfBirth", DateOfBirth),
                    new SqlParameter("@CountryID", CountryID),
                    new SqlParameter("@EmailAdd", EmailAdd.Trim()),
                };

                string strQuery = "INSERT INTO Users (Username, PassHash, FirstName, LastName, Gender, DateOfBirth, CountryID, EmailAdd) ";
                strQuery += "VALUES(@Username, @PassHash, @FirstName, @LastName, @Gender, @DateOfBirth, @CountryID, @EmailAdd); SELECT SCOPE_IDENTITY()";

                using (SqlConnection con = new SqlConnection(connString))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(strQuery, con))
                    {
                        cmd.Parameters.AddRange(parameters);
                        newUserID = cmd.ExecuteScalar().ToString();
                    }
                    con.Close();
                } 
                return newUserID;
            }
            catch (Exception ex) 
            {
                throw ex;
            }
        }

        public static User GetUserByEmail(string EmailAdd)
        {
            try
            {
                User user = null;
                using (SqlConnection con = new SqlConnection(connString))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("SELECT TOP 1 * FROM Users WHERE EmailAdd=@Email ", con))
                    {
                        cmd.Parameters.Add(new SqlParameter("@Email", EmailAdd.Trim()));

                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            if (dr.HasRows)
                            {
                                user = new User()
                                {
                                    UserID = dr["UserID"].ToString(),
                                    Username = dr["Username"].ToString(),
                                    PassHash = dr["PassHash"].ToString(),
                                    FirstName = dr["FirstName"].ToString(),
                                    LastName = dr["LastName"].ToString(),
                                    Gender = dr["Gender"].ToString(),
                                    DateOfBirth = Convert.ToDateTime(dr["DateOfBirth"]),
                                    CountryID = Convert.ToInt32(dr["CountryID"]),
                                    EmailAdd = dr["EmailAdd"].ToString(),
                                    DateCreated = Convert.ToDateTime(dr["DateCreated"]),
                                    DateModified = Convert.ToDateTime(dr["DateModified"]),
                                    IsActive = Convert.ToBoolean(dr["IsActive"]),
                                };
                            }
                        }
                    }
                    con.Close();
                }
                return user;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static User GetUserByID(string UserID)
        {
            try
            {
                User user = null;
                using (SqlConnection con = new SqlConnection(connString))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("SELECT TOP 1 * FROM Users WHERE UserID=@id ", con))
                    {
                        cmd.Parameters.Add(new SqlParameter("@id", UserID.Trim()));

                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            if (dr.HasRows)
                            {
                                user = new User()
                                {
                                    UserID = dr["UserID"].ToString(),
                                    Username = dr["Username"].ToString(),
                                    PassHash = dr["PassHash"].ToString(),
                                    FirstName = dr["FirstName"].ToString(),
                                    LastName = dr["LastName"].ToString(),
                                    Gender = dr["Gender"].ToString(),
                                    DateOfBirth = Convert.ToDateTime(dr["DateOfBirth"]),
                                    CountryID = Convert.ToInt32(dr["CountryID"]),
                                    EmailAdd = dr["EmailAdd"].ToString(),
                                    DateCreated = Convert.ToDateTime(dr["DateCreated"]),
                                    DateModified = Convert.ToDateTime(dr["DateModified"]),
                                    IsActive = Convert.ToBoolean(dr["IsActive"]),
                                };
                            }
                        }
                    }
                    con.Close();
                }
                return user;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static User GetUserByUsername(string Username)
        {
            try
            {
                User user = null;
                using (SqlConnection con = new SqlConnection(connString))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("SELECT TOP 1 * FROM Users WHERE Username=@un ", con))
                    {
                        cmd.Parameters.Add(new SqlParameter("@un", Username.Trim()));

                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            if (dr.HasRows)
                            {
                                user = new User()
                                {
                                    UserID = dr["UserID"].ToString(),
                                    Username = dr["Username"].ToString(),
                                    PassHash = dr["PassHash"].ToString(),
                                    FirstName = dr["FirstName"].ToString(),
                                    LastName = dr["LastName"].ToString(),
                                    Gender = dr["Gender"].ToString(),
                                    DateOfBirth = Convert.ToDateTime(dr["DateOfBirth"]),
                                    CountryID = Convert.ToInt32(dr["CountryID"]),
                                    EmailAdd = dr["EmailAdd"].ToString(),
                                    DateCreated = Convert.ToDateTime(dr["DateCreated"]),
                                    DateModified = Convert.ToDateTime(dr["DateModified"]),
                                    IsActive = Convert.ToBoolean(dr["IsActive"]),
                                };
                            }
                        }
                    }
                    con.Close();
                }
                return user;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void UpdateUser(
            string UserID,
            string FirstName,
            string LastName,
            string Gender,
            DateTime DateOfBirth,
            int CountryID,
            string EmailAdd)

        {
            try
            {
                SqlParameter[] parameters = {
                    new SqlParameter("@UserID", UserID),
                    new SqlParameter("@FirstName", FirstName.Trim()),
                    new SqlParameter("@LastName", LastName.Trim()),
                    new SqlParameter("@Gender", Gender.Trim()),
                    new SqlParameter("@DateOfBirth", DateOfBirth),
                    new SqlParameter("@CountryID", CountryID),
                    new SqlParameter("@EmailAdd", EmailAdd.Trim()),
                };

                string strQuery = "UPDATE Users SET FirstName=@FirstName, LastName=@LastName, Gender=@Gender, DateOfBirth=@DateOfBirth, CountryID=@CountryID, EmailAdd=@EmailAdd, ";
                strQuery += "DateModified=GETDATE() WHERE UserID=@UserID";

                using (SqlConnection con = new SqlConnection(connString))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(strQuery, con))
                    {
                        cmd.Parameters.AddRange(parameters);
                        cmd.ExecuteNonQuery();
                    }
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void UpdateUserActiveStatus(bool IsActive)
        {
            try
            {
                string strQuery = "UPDATE Users SET IsActive=@IsActive, DateModified=GETDATE() WHERE UserID=@UserID";

                using (SqlConnection con = new SqlConnection(connString))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(strQuery, con))
                    {
                        cmd.Parameters.Add(new SqlParameter("@IsActive", IsActive));
                        cmd.ExecuteNonQuery();
                    }
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void UpdateUserPassword(string Password)
        {
            try
            {
                string passwordHash = BCrypt.Net.BCrypt.HashPassword(Password.Trim());

                string strQuery = "UPDATE Users SET PassHash=@PassHash, DateModified=GETDATE() WHERE UserID=@UserID";

                using (SqlConnection con = new SqlConnection(connString))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(strQuery, con))
                    {
                        cmd.Parameters.Add(new SqlParameter("@PassHash", passwordHash));
                        cmd.ExecuteNonQuery();
                    }
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


    }
}