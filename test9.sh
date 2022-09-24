echo 'FiveM LINUX REBOOT INSTALLER'
cd /usr/bin/
touch fivem_start.sh
echo -e '#!/bin/bash
screen -dmS txadmin bash  /home/FiveM/server/run.sh +set serverProfile default +set txAdminPort 40120' >> fivem_start.sh
echo 'fivem_start.sh is created'
cd /lib/systemd/system/
bash <(curl -s raw.githubusercontent.com/Schwarzerteddydev/fivem-autoreboot/main/fivem.service)

echo 'fivem.service is created'
echo 'Default reboot Installed'

sudo chmod +x /usr/bin/fivem_start.sh
sudo systemctl daemon-reload
sudo systemctl start fivem
sudo systemctl enable fivem
echo 'Permissions set for fivem_start.sh fivem.service to 777'
