# Script to add and remove users
$Users = @(
	@{ Name = "JohnDoe"; Password = "P@ssw0rd1"; Group = "Administrators" },
	@{ Name = "JaneSmith"; Password = "P@ssw0rd2"; Group = "Users" }
)
# Add new users
foreach ($User in $Users) {
	New-LocalUser -Name $User.Name -Password (ConvertTo-SecureString $User.Password -AsPlainText -Force)
	Add-LocalGroupMember -Group $User.Group -Member $User.Name
}