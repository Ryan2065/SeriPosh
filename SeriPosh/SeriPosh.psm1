[void][Reflection.Assembly]::LoadFile("$($PSScriptRoot)\SeriLog\Serilog.dll")
[void][Reflection.Assembly]::LoadFile("$($PSScriptRoot)\SeriLog\Serilog.Sinks.File\Serilog.Sinks.File.dll")

$CommandFiles = Get-ChildItem -Path "$PSScriptRoot\Commands" -Filter '*.ps1'
Foreach($file in $CommandFiles) {
    . $File.Fullname
}

Export-ModuleMember -Function $CommandFiles.BaseName