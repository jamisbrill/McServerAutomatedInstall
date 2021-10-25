#!/bin/bash
echo "please run with sudo (sudo ./mcinstallv2.sh)"
sudo apt-get update #make sure you have all up to date packadges 
sudo apt-get upgrade

sudo apt-get install default-jdk #install java
useradd -m -d /home/mc -s /bin/bash -c "mc server user" -U mc #create a seggregated user
echo "please enter a pass for your new user"
passwd mc # User sets password
mkdir /home/mc/serverfiles #create directory to store server files
cd /home/mc/serverfiles # navigate to dir
#curl --output spigot.jar https://cdn.getbukkit.org/spigot/spigot-1.16.5.jar # Download spigot // Update this path     
#curl --output spigot.jar https://download.getbukkit.org/craftbukkit/craftbukkit-1.17.1.jar #craftbukkit instead of spigot.jar 
curl --output spigot.jar https://download.getbukkit.org/spigot/spigot-1.17.1.jar #download latest spigot
echo "java -Xms300M -Xmx1000M -jar spigot.jar -o false -nogui" > launch.sh   # Append To file #|reduced ram 
chmod +x launch.sh    # Make file executeable
sudo ufw allow 25565  #Open mc port
echo  "eula=true" > eula.txt # agree to mc's eula
cd /home/mc/serverfiles #navigate to the directory
sudo ./launch.sh   #run the script to launch the server 
cd plugins
#curl //download plugins wanted .....  
