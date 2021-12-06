using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace TemperatureConversion.Models
{
    public class TemperatureContext : DbContext
    {
        public TemperatureContext() : base("TemperatureConnection") { }

        public DbSet<TemperatureRecord> TemperatureRecords { get; set; }
    }
}