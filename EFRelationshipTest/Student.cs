namespace EFRelationshipTest
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Student")]
    public partial class Student
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int StudentId { get; set; }

        [StringLength(100)]
        public string StudentName { get; set; }

        public int? StandardId { get; set; }

        public virtual Standard Standard { get; set; }
    }
}
