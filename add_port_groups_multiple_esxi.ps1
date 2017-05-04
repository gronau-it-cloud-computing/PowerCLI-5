$PGName = "Portgroup_Name"
$VlanId = 100
$vSwitchName = "vSwitch0"

$TargetHosts = Get-VMHost

Foreach ($VMHost in $TargetHosts) {
	$portGroup =  New-VirtualPortGroup -VirtualSwitch ($VMHost | Get-VirtualSwitch -Name $vSwitchName) -Name $PGName -VLANID $VlanId
   
    if(-not $portGroup) {
        write-host "Portgroup $PGName created at $VMHost" -fore green
    } else {
        write-host "Portgroup $PGName created at $VMHost" -fore green
    }
}