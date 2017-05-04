$PGName = "Portgroup_Name"
$VlanId = 100
$vSwitchName = "vSwitch0"

$TargetHosts = Get-VMHost

Foreach ($VMHost in $TargetHosts) {
	$portGroup =  New-VirtualPortGroup -VirtualSwitch ($VMHost | Get-VirtualSwitch -Name $vSwitchName) -Name $PGName -VLANID $VlanId
    write-host "Portgroup $PGName created at $VMHost" -fore green
}