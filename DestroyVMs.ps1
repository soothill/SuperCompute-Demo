stop-vm -name "Node 1"
stop-vm -name "Node 2"
stop-vm -name "Node 3"
stop-vm -name "Node 4"

remove-vm -name "Node 1" -Force
remove-vm -name "Node 2" -Force
remove-vm -name "Node 3" -Force
remove-vm -name "Node 4" -Force

rm c:\croit\*.vhdx
