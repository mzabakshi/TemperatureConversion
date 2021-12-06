using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TemperatureConversion.Models
{
    public class TemperatureRecord
    {
        public int Id { get; set; }
        public decimal Fahrenheit { get; set; }
        public decimal Celsius { get; set; }
        public string CreatedDate { get; set; }
        public string UserId { get; set; }
    }
}