﻿using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Hosting.WindowsServices;
using Microsoft.Extensions.Configuration;

namespace CuddleFishServices
{
   public class Program
    {
      //  public static void Main(string[] args)
      //  {
      //      bool isService = !(Debugger.IsAttached || args.Contains("--console"));

      //      var pathToContentRoot = Directory.GetCurrentDirectory();
      //      if (isService)
      //      {
      //         var pathToExe = Process.GetCurrentProcess().MainModule.FileName;
      //         pathToContentRoot = Path.GetDirectoryName(pathToExe);
      //      }

      //      System.IO.Directory.SetCurrentDirectory(System.AppDomain.CurrentDomain.BaseDirectory);

      //      var configBuilder = new ConfigurationBuilder()
      //             .SetBasePath(Directory.GetCurrentDirectory())
      //             .AddJsonFile("appsettings.json");

      //      var config = configBuilder.Build();
      //      var port = int.Parse(config["port"]);
      //      var url = config["url"];
      //      var urlPrefix = config["urlPrefix"];

      //      var host = new WebHostBuilder()
      //                  .UseKestrel(options =>
      //                  {
      //                     options.Listen(IPAddress.Any, port);
      //                  })
      //                  .UseContentRoot(pathToContentRoot)
      //                 .UseStartup<Startup>()
      //                 .UseIISIntegration()
      //                 .Build();

      //      if (isService)
      //      {
      //         host.RunAsService();
      //      }
      //      else
      //      {
      //         host.Run();
      //      }

      //      //Process.Start("chrome.exe", string.Format("--incognito  http://localhost:{0}/MovieStore/Movies ", port));

      //}

      public static void Main(string[] args)
      {
         var configBuilder = new ConfigurationBuilder()
                   .SetBasePath(Directory.GetCurrentDirectory())
                   .AddJsonFile("appsettings.json");

         var config = configBuilder.Build();
         var port = int.Parse(config["port"]);
         var url = config["url"];
         var urlPrefix = config["urlPrefix"];

         var host = new WebHostBuilder()
             .UseKestrel(options =>
                        {
                           options.Listen(IPAddress.Any, port);
                        })
             .UseContentRoot(Directory.GetCurrentDirectory())
             .UseIISIntegration()
             .UseStartup<Startup>()
             .Build();

         host.Run();
      }
   }
}
