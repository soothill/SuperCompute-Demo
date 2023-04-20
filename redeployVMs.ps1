stop-vm -name "Node 1" -Force
stop-vm -name "Node 2" -Force
stop-vm -name "Node 3" -Force
stop-vm -name "Node 4" -Force

remove-vm -name "Node 1" -Force
remove-vm -name "Node 2" -Force
remove-vm -name "Node 3" -Force
remove-vm -name "Node 4" -Force

remove-item c:\croit\*.vhdx


for ($NODE=1; $NODE -le 4; $NODE++)
{
    $NODENAME = "Node " + $NODE
    $MONDISK = "\croit\node" + $NODE + "mon.vhdx"
    $OSD1DISK = "\croit\node" + $NODE + "osd1.vhdx"
    $OSD2DISK = "\croit\node" + $NODE + "osd2.vhdx"

    new-vhd -path $MONDISK -sizebytes 10GB -asjob

    new-vhd -path $OSD2DISK -sizebytes 50GB -asjob

    new-vm $NODENAME -MemoryStartupbytes 8GB -bootdevice VHD -newvhdpath $OSD1DISK -newvhdsize 50GB -generation 2 -switch WSL

    Set-VMFirmware $NODENAME -enablesecureboot off

    Set-VMProcessor -vmname $NODENAME -count 4

    add-vmharddiskdrive -vmname $NODENAME -path $MONDISK

    add-vmharddiskdrive -vmname $NODENAME -path $OSD2DISK
}