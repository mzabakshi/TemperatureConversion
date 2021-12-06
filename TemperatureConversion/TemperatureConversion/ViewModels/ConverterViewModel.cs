using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TemperatureConversion.ViewModels
{
    public class ConverterViewModel
    {
        [RegularExpression(@"\d+(\.\d{1,2})?", ErrorMessage = "Invalid Fahrenheit input")]
        public decimal Fahrenheit { get; set; }

        [RegularExpression(@"\d+(\.\d{1,2})?", ErrorMessage = "Invalid Celsius input")]
        public decimal Celsius { get; set; }

        public DateTime Date { get; set; }
    }
}