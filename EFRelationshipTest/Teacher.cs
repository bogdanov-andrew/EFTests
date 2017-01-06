namespace EFRelationshipTest
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Teacher")]
    public partial class Teacher
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Teacher()
        {
            Courses = new HashSet<Course>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int TeacherId { get; set; }

        [StringLength(100)]
        public string TeacherName { get; set; }

        public int? StandardId { get; set; }

        public int? TeacherType { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Course> Courses { get; set; }

        public virtual Standard Standard { get; set; }
    }
}
