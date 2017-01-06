using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EFDBFirst1
{
    class Program
    {
        static void Main(string[] args)
        {
            using (TestModel model = new TestModel())
            {
                var query = from b in model.Blogs where b.BlogId == 1 select b;
                var blogs = query.ToList();
            }
        }
    }
}
