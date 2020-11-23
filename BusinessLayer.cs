using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using eCommerceGitHub.Models;

namespace eCommerceGitHub
{
    public class BusinessLayer
    {
        public BusinessLayer() { }

        public void AddNewUser(Models.UsersTable user)
        {
            string connectionString =
            ConfigurationManager.ConnectionStrings["eCommerceDB"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("spInsertUser", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter paramFirstName = new SqlParameter();
                paramFirstName.ParameterName = "@FirstName";
                paramFirstName.Value = user.FirstName;
                cmd.Parameters.Add(paramFirstName);

                SqlParameter paramLastName = new SqlParameter();
                paramLastName.ParameterName = "@LastName";
                paramLastName.Value = user.LastName;
                cmd.Parameters.Add(paramLastName);

                SqlParameter paramUserEmail = new SqlParameter();
                paramUserEmail.ParameterName = "@UserEmail";
                paramUserEmail.Value = user.UserEmail;
                cmd.Parameters.Add(paramUserEmail);

                SqlParameter paramUserPassword = new SqlParameter();
                paramUserPassword.ParameterName = "@UserPassword";
                paramUserPassword.Value = user.UserPassword;
                cmd.Parameters.Add(paramUserPassword);

                SqlParameter paramCanRentCar = new SqlParameter();
                paramCanRentCar.ParameterName = "@CanRentCar";
                paramCanRentCar.Value = user.CanRentCar;
                cmd.Parameters.Add(paramCanRentCar);

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}