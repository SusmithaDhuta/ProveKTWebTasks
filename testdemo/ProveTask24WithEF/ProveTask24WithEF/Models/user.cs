//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProveTask24WithEF.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class user
    {
        [Required(ErrorMessage ="This Field Required")]
        public int Id { get; set; }
        [Required(ErrorMessage = "This Field Required")]
        public string username { get; set; }

        [Required(ErrorMessage = "This Field Required")]
        public string firstname { get; set; }

        [Required(ErrorMessage = "This Field Required")]
        public string lastname { get; set; }  
        [DataType(DataType.EmailAddress)]
        [Required(ErrorMessage = "This Field Required")]
        public string email { get; set; }

        [Required(ErrorMessage = "This Field Required")]
        [DataType(DataType.PhoneNumber)]
        public string phonenumber { get; set; }
    }
}
