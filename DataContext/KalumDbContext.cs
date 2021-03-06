using System.IO;
using Kalum2020v1.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;

namespace Kalum2020v1.DataContext
{
    public class KalumDbContext : DbContext
    {
        public KalumDbContext(DbContextOptions<KalumDbContext> options)
            :base(options){                
        }
        public DbSet<Alumno> Alumnos {get;set;}
        public DbSet<CarreraTecnica> CarreraTecnicas {get;set;}
        public DbSet<Horario> Horarios {get;set;}
        public DbSet<Salon> Salones {get;set;}
        public DbSet<Instructor> Instructores {get;set;}   
        public DbSet<Clase> Clases {get;set;}        

        public DbSet<Religion> Religiones {get;set;}
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            IConfigurationRoot configuration = new ConfigurationBuilder()
            .SetBasePath(Directory.GetCurrentDirectory())
            .AddJsonFile("appsettings.json")
            .Build();
            optionsBuilder.UseSqlServer(configuration.GetConnectionString("DefaultConnection"));            
        }
        public KalumDbContext()
        {

        }
    }

    
}