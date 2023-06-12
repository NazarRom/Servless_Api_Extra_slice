using Microsoft.EntityFrameworkCore;
using Microsoft.OpenApi.Models;
using Newtonsoft.Json;
using Servless_Api_Extra_slice.Data;
using Servless_Api_Extra_slice.Helpers;
using Servless_Api_Extra_slice.Models;
using Servless_Api_Extra_slice.Repository;

namespace Servless_Api_Extra_slice;

public class Startup
{
    public Startup(IConfiguration configuration)
    {
        Configuration = configuration;
    }

    public IConfiguration Configuration { get; }

    // This method gets called by the runtime. Use this method to add services to the container
    public void ConfigureServices(IServiceCollection services)
    {
        //string connectionString = this.Configuration.GetConnectionString("Conciertos");
        string miSecreto = HelperSecretManager.GetSecretAsync().Result;

        //PODEMOS DAR FORMATO A NUESTRO SECRETO
        KeyModel model = JsonConvert.DeserializeObject<KeyModel>(miSecreto);

        //SI ESTAMOS EN UNA APP MAS COMPLEJA DONDE NECESITAMOS RECUPERAR MAS 
        //DATOS Y UTILIZARLOS EN DISTINTAS CLASES, AL ESTILO DE IConfiguration
        services.AddSingleton<KeyModel>(x => model).BuildServiceProvider();

        string connectionString = model.Connection;
        services.AddDbContext<RestauranteContext>(options => options.UseMySql(connectionString, ServerVersion.AutoDetect(connectionString)));
        services.AddTransient<RepositoryRestaurante>();
        //token
        services.AddSingleton<HelperOAuthToken>();
        HelperOAuthToken helper = new HelperOAuthToken(Configuration);
        services.AddAuthentication(helper.GetAuthenticationOptions()).AddJwtBearer(helper.GetJwtOptions());
        //cors
        services.AddCors(p => p.AddPolicy("corsapp", builder =>
        {
            builder.WithOrigins("*").AllowAnyMethod().AllowAnyHeader();
        }));
        services.AddSwaggerGen(options =>
        {
            options.SwaggerDoc("v1", new OpenApiInfo
            {
                Title = "Api ExtraSlice",
                Version = "v1"
            });
        });
        services.AddControllers();
    }

    // This method gets called by the runtime. Use this method to configure the HTTP request pipeline
    public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
    {
        app.UseSwagger();
        app.UseSwaggerUI(options =>
        {
            options.SwaggerEndpoint("swagger/v1/swagger.json", "Api Extra");
            options.RoutePrefix = "";
        });

        if (env.IsDevelopment())
        {
            app.UseDeveloperExceptionPage();
        }
        app.UseCors("corsapp");

        app.UseHttpsRedirection();

        app.UseRouting();

        app.UseAuthentication();

        app.UseAuthorization();

        app.UseEndpoints(endpoints =>
        {
            endpoints.MapControllers();
            endpoints.MapGet("/", async context =>
            {
                await context.Response.WriteAsync("Welcome to running ASP.NET Core on AWS Lambda");
            });
        });
    }
}