using System;
using System.Data;
using System.Data.SqlClient; // Use SqlClient for SQL Server
using Dapper; // Required for QuerySingle and Execute

namespace HelloWorld
{
    internal class Program
    {
        public class Computer
        {
            public Computer(
                string motherBoard,
                int cPUCores,
                bool hasWifi,
                bool hasLTE,
                DateTime releaseDate,
                decimal price,
                string videoCard
            )
            {
                this.MotherBoard = motherBoard;
                this.CPUCores = cPUCores;
                this.HasWifi = hasWifi;
                this.HasLTE = hasLTE;
                this.ReleaseDate = releaseDate;
                this.Price = price;
                this.VideoCard = videoCard;
            }

            public string MotherBoard { get; set; } =""
            public int CPUCores { get; set; }
            public bool HasWifi { get; set; }
            public bool HasLTE { get; set; }
            public DateTime ReleaseDate { get; set; }
            public decimal Price { get; set; }
            public string VideoCard { get; set; } = ""
        }

        static void Main(string[] args)
        {
            // Create a new Computer object
            Computer myComputer = new Computer
            {
                MotherBoard = "ASUS ROG",
                CPUCores = 8,
                HasWifi = true,
                HasLTE = false,
                ReleaseDate = DateTime.Now,
                Price = 1500.99m,
                VideoCard = "NVIDIA RTX 3080",
            };

            // Connection string
            string connectionString =
                "Server=localhost;Database=DotNetCourseDatabase;Trusted_Connection=True;TrustServerCertificate=True;";

            using IDbConnection dbConnection = new SqlConnection(connectionString);

            string insertSql =
                @"
                INSERT INTO TutorialAppSchema.Computer
                (MotherBoard, CPUCore, HasWifi, HasLTE, ReleaseDate, Price, VideoCard)
                VALUES
                ('"
                + myComputer.MotherBoard
                + "', "
                + myComputer.CPUCores
                + ", "
                + myComputer.HasWifi
                + ", "
                + myComputer.HasLTE
                + ", '"
                + myComputer.ReleaseDate
                + "', "
                + myComputer.Price
                + ", '"
                + myComputer.VideoCard
                + "')";
            Console.WriteLine(insertSql);
            int result = dbConnection.Execute(insertSql);
            Console.WriteLine($"Inserted {result} records.");

            dbConnection.Execute(insertSql, myComputer);
            Console.WriteLine("Computer details inserted into the database successfully.");
        }
    }
}
