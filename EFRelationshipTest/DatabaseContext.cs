namespace EFRelationshipTest
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class DatabaseContext : DbContext
    {
        public DatabaseContext()
            : base("name=DatabaseContext")
        {
        }

        public virtual DbSet<Course> Courses { get; set; }
        public virtual DbSet<Standard> Standards { get; set; }
        public virtual DbSet<Student> Students { get; set; }
        public virtual DbSet<Teacher> Teachers { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Course>()
                .Property(e => e.CourseName)
                .IsUnicode(false);

            modelBuilder.Entity<Course>()
                .Property(e => e.Location)
                .IsUnicode(false);

            modelBuilder.Entity<Standard>()
                .Property(e => e.StandardName)
                .IsUnicode(false);

            modelBuilder.Entity<Standard>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Student>()
                .Property(e => e.StudentName)
                .IsUnicode(false);

            modelBuilder.Entity<Teacher>()
                .Property(e => e.TeacherName)
                .IsUnicode(false);
        }
    }
}
