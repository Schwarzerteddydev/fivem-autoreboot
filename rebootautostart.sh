echo 'FiveM LINUX REBOOT INSTALLER'
cd /usr/bin
touch fivem_start.sh
echo -e '#!/bin/bash
screen -dmS txadmin bash  /home/FiveM/server/run.sh +set serverProfile default +set txAdminPort 40120' >> fivem_start.sh
echo 'fivem_start.sh is created'
cd /lib/systemd/system/
touch fivem.service
echo -e '[Unit]
Description=FiveM server
[Service]
Type=forking
User=root
ExecStart=/usr/bin/fivem_start.sh
[Install]
WantedBy=multi-user.target' >> fivem.service

sudo chmod +x /usr/bin/fivem_start.sh
sudo systemctl daemon-reload
sudo systemctl start fivem
sudo systemctl enable fivem
echo 'Permissions set for fivem_start.sh fivem.service to 777'
