using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace ProveTask20.Models
{
    public class FormClass
    {
        [Required]
        [Display(Name = "Username")]
        public string Username { get; set; }

        [Required]
        [Display(Name = "Address")]
        public string Address { get; set; }

        //[Range(typeof(DateTime), "1/1/1990", "1/1/2090",
        //ErrorMessage = "Value for {0} must be between {1} and {2}")]
        public DateTime Date { get; set; }

        [Required]
        [Display(Name = "Nationality")]
        public string Nationality { get; set; }
        public string PrefCountry { get; set; }
        [Required]
        [Display(Name = "Skills")]
        public string Skills { get; set; }
        public IEnumerable<SelectListItem> PrefCountries { get; set; }
    }
}

