using System;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodeFirstEFTest1
{
    class Program
    {
        static void Main(string[] args)
        {
            Blog g1 = new Blog() {Name = "test1"};
            Blog g2 = new Blog() {Name = "test2"};

            using (BloggingContext context = new BloggingContext())
            {
                context.Blogs.Add(g1);
                context.Blogs.Add(g2);
                context.SaveChanges();

                var query = from b in context.Blogs where b.Name == "test1" select b;
                var list = query.ToList();
            }
        }
    }
}
