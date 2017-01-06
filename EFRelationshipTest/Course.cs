namespace EFRelationshipTest
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Course")]
    public partial class Course
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int CourseId { get; set; }

        [StringLength(100)]
        public string CourseName { get; set; }

        [StringLength(100)]
        public string Location { get; set; }

        public int? TeacherId { get; set; }

        public virtual Teacher Teacher { get; set; }
    }
}
