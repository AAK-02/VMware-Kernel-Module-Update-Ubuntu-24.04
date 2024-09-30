#! /bin/bash

directory="vmware-host-modules-workstation-17.5.1"
echo "Don't forget to run it  in the root"
if [[ -d ${directory} ]]; then
        echo "directory found "
        rm -r ${directory}
fi
wget https://github.com/mkubecek/vmware-host-modules/archive/workstation-17.5.1.tar.gz
tar -xzf workstation-17.5.1.tar.gz && cd vmware-host-modules-workstation-17.5.1
tar -cf vmmon.tar vmmon-only && tar -cf vmnet.tar vmnet-only
sudo cp -v vmmon.tar vmnet.tar /usr/lib/vmware/modules/source/
sudo vmware-modconfig --console --install-all

