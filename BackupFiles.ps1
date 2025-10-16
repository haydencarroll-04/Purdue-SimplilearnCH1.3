#Script to backup files
$SourceDir = "C:\ImportantFiles"
$BackupDir = "D:\Backups\$(Get-Date -Format 'yyyy-MM-dd')"
#Create backup directory
New-Item -ItemType Directory -Path $BackupDir -Force
Write-Host "Backup directory created at: $BackupDir"
#Copy files
Copy-Item -Path "$SourceDir\*" -Destination $BackupDir -Recurse -Force
Write-Host "Files copied from $SourceDir to $BackupDir"
