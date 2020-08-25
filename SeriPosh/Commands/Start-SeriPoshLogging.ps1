Function Start-SeriPoshLogging {
    Param(
        [Parameter(Mandatory=$false)]
        [switch]$DisableWriteIntercept,
        [Parameter(Mandatory=$false)]
        [ValidateSet("Information", "Debug", "Error", "Fatal", "Verbose", "Warning")]
        [string]$LogLevel = "Information",
        [Parameter(Mandatory=$true, ParameterSetName='FileSink')]
        [switch]$FileSink,
        [Parameter(Mandatory=$false, ParameterSetName='FileSink')]
        [switch]$CMTraceFormat,
        [Parameter(Mandatory=$false, ParameterSetName='FileSink')]
        [string]$CustomFormat,
        [Parameter(Mandatory=$false, ParameterSetName='FileSink')]
        [string]$FilePath = "$($env:Temp)\SeriPoshLog.log"
    )
    begin {
        $LogConfiguration = [Serilog.LoggerConfiguration]::new()
    }
    process {
        Set-SeriPoshLogLevel -LogLevel $LogLevel -LogConfiguration [ref]$LogConfiguration
        if($FileSink) {
            Set-SeriPoshFileSinkConfiguration -CMTraceFormat:$CMTraceFormat -CustomFormat $CustomFormat -FilePath $FilePath -LogConfiguration [ref]$LogConfiguration
        }
    }
    end {
        $Script:SeriPoshLogger = $LogConfiguration.CreateLogger()
    }
}