Function Set-SeriPoshLogLevel {
    Param(
        [Parameter(Mandatory=$true)]
        [ref]$LogConfiguration,
        [Parameter(Mandatory=$true)]
        [string]$LogLevel
    )
    Switch($LogLeve) {
        "Information" {
            $LogConfiguration.MinimumLevel.Information()
        }
        "Debug" {
            $LogConfiguration.MinimumLevel.Debug()
        }
        "Error" {
            $LogConfiguration.MinimumLevel.Error()
        }
        "Fatal" {
            $LogConfiguration.MinimumLevel.Fatal()
        }
        "Verbose" {
            $LogConfiguration.MinimumLevel.Verbose()
        }
        "Warning" {
            $LogConfiguration.MinimumLevel.Warning()
        }
        default {
            $LogConfiguration.MinimumLevel.Information()
        }
    }
}