using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Procheshta.Startup))]
namespace Procheshta
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
