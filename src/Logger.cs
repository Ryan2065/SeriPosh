using System;
using System.Collections.Generic;
using System.Text;
using Serilog;

namespace SeriPosh
{
    public static class SLogger
    {
        public static void Create()
        {
            Log.Logger = new LoggerConfiguration().CreateLogger();
            
        }
    }
}
