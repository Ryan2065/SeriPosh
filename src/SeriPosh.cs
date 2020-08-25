using System;
using System.Diagnostics;
using Serilog;
using Serilog.Sinks.File;
using System.Management.Automation;

namespace SeriPosh
{

    public class Start
    {

    }

    /*public class Config
    {
        private const long MB = 1048576;
        public static LoggerConfiguration FileConfig(
            LoggerConfiguration logger,
            string logPath,
            bool rollOnFileSizeLimit,
            long fileSizeLimitMB,
            string rollingInterval,
            string customTemplate = "",
            bool CMFormat = false)
        {
            if (CMFormat)
            {
                Process currentProcess = Process.GetCurrentProcess();
                string pid = currentProcess.Id.ToString();
                customTemplate = "{Message:lj} {Exception} {Level}  $$<{Component}><{Timestamp:MM-dd-yyyy HH:mm:ss.fff zzz}><thread=" + pid + ">";
            }
            if (String.IsNullOrEmpty(customTemplate))
            {
                logger.WriteTo.File(logPath, rollOnFileSizeLimit: true, fileSizeLimitBytes: 1048576);
            }
            else
            {
                logger.WriteTo.File(logPath, rollOnFileSizeLimit: true, fileSizeLimitBytes: 1048576, outputTemplate: customTemplate);
            }
            
            return logger;
        }
    }*/
}
