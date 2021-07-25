namespace Procheshta.Migrations
{
    using Microsoft.AspNet.Identity;
    using Microsoft.AspNet.Identity.EntityFramework;
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;
    using Procheshta.Models;

    internal sealed class Configuration : DbMigrationsConfiguration<Procheshta.Models.ApplicationDbContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(Procheshta.Models.ApplicationDbContext context)
        {
            string[] roles = new string[] { "Admins", "Members", "Annonymous" };
            var roleStore = new RoleStore<IdentityRole>(context);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            foreach (var r in roles)
            {
                if (!context.Roles.Any(x => x.Name == r))
                {
                    roleManager.Create(new IdentityRole(r));
                }
            }
          
            var userStore = new UserStore<ApplicationUser>(context);

            if (!(context.Users.Any(u => u.UserName == "admin@bb.com")))
            {
                var userManager = new UserManager<ApplicationUser>(userStore);
                var userToInsert = new ApplicationUser { UserName = "admin@bb.com", PhoneNumber = "01717152477" };
                var result = userManager.CreateAsync(userToInsert, "@Admin123");
                if (result.Result.Succeeded)
                    userManager.AddToRole(userToInsert.Id, "Admins");
            }
        }
    }
}
