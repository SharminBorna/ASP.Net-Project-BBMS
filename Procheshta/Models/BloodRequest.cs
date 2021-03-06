//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Procheshta.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class BloodRequest
    {
        public int requestID { get; set; }
        public int patientID { get; set; }
        public int bloodGroupId { get; set; }
        public System.DateTime caseDate { get; set; }
        public string reasonForBlood { get; set; }
        public string contactNo { get; set; }
        public int hospitalID { get; set; }
    
        public virtual BloodGroup BloodGroup { get; set; }
        public virtual Hospital Hospital { get; set; }
        public virtual Patient Patient { get; set; }
    }
}
