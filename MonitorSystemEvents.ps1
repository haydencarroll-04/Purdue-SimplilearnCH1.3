# Script to monitor system events for security logs
$BeginTime = (Get-Date).AddHours(-24)
Get-EventLog -LogName Security -After $BeginTime |# Get-EventLog is a Windows ONLY command and will not work in MacOS/Homebrew/Linux
Where-Object { $_.EntryType -eq "SuccessAudit" -or $_.EntryType -eq "FailureAudit" } |
Select-Object TimeGenerated, EventID, EntryType, Message |
Format-Table -AutoSize |Out-File "$env:USERPROFILE\Desktop\SecurityLogReport.txt"