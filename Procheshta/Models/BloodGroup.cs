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
    
    public partial class BloodGroup
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public BloodGroup()
        {
            this.BloodRequests = new HashSet<BloodRequest>();
        }
    
        public int bloodGroupId { get; set; }
        public string bloodGroup1 { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BloodRequest> BloodRequests { get; set; }
    }
}
