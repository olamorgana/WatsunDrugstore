var builder = WebApplication.CreateBuilder(args);

// Set DataDirectory for LocalDB (so |DataDirectory| in connection string works)
AppDomain.CurrentDomain.SetData("DataDirectory",
    Path.Combine(builder.Environment.ContentRootPath, "App_Data"));

// Add services
builder.Services.AddControllersWithViews();


// Add Session support (for shopping cart)
builder.Services.AddDistributedMemoryCache();
builder.Services.AddSession(options =>
{
    options.IdleTimeout = TimeSpan.FromMinutes(30);
    options.Cookie.HttpOnly = true;
    options.Cookie.IsEssential = true;
});

var app = builder.Build();

// Middleware pipeline
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();
app.UseRouting();
app.UseSession();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();