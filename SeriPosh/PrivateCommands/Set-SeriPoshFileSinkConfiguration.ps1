Function Set-SeriPoshFileSinkConfiguration {
    Param(
        [Parameter(Mandatory=$false)]
        [switch]$CMTraceFormat,
        [Parameter(Mandatory=$false)]
        [string]$CustomFormat,
        [Parameter(Mandatory=$false)]
        [string]$FilePath = "$($env:Temp)\SeriPoshLog.log",
        [Parameter(Mandatory=$true)]
        [ref]$LogConfiguration
    )
    if( ($CMTraceFormat) -or ![String]::IsNullOrEmpty($CustomFormat) ){
        [Serilog.Sinks.File.FileSink]::new(
            $FilePath,
        )
    }
    else {

    }
    $LogConfiguration
}