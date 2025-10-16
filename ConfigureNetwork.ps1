# Script to configure network settings
$InterfaceAlias = "Ethernet"
$IPAddress = "192.168.1.100"
$DefaultGateway = "192.168.1.1"
$DNSServer = "8.8.8.8"
# Set IP address and gateway
New-NetIPAddress -InterfaceAlias $InterfaceAlias -IPAddress $IPAddress PrefixLength 24 -DefaultGateway $DefaultGateway
# Set DNS server
Set-DnsClientServerAddress -InterfaceAlias $InterfaceAlias -ServerAddresses $DNSServer