using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TemperatureConversion.Startup))]
namespace TemperatureConversion
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
