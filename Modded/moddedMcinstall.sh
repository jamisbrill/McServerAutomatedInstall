#!/bin/bash
echo "please run with sudo (sudo ./moddedMcinstall.sh)"
sudo apt-get update #make sure you have all up to date packadges 
sudo apt-get upgrade

sudo apt install openjdk-8-jdk openjdk-8-jre #install java // need specific older java 


useradd -m -d /home/mc -s /bin/bash -c "mc server user" -U mc #create a seggregated user
echo "please enter a pass for your new user"
passwd mc # User sets password
mkdir /home/mc/serverfiles #create directory to store server files
cd /home/mc/serverfiles # navigate to dir
#curl --output spigot.jar https://cdn.getbukkit.org/spigot/spigot-1.16.5.jar # Download spigot // Update this path     
#curl --output spigot.jar https://download.getbukkit.org/craftbukkit/craftbukkit-1.17.1.jar #craftbukkit instead of spigot.jar 
curl --output spigot.jar https://download.getbukkit.org/spigot/spigot-1.17.1.jar #download sponge? 
curl https://repo.spongepowered.org/maven/org/spongepowered/spongeforge/1.12.2-2838-7.3.1-RC4082/spongeforge-1.12.2-2838-7.3.1-RC4082.jar # download forge

echo "java -Xms1000M -Xmx8000M -jar spigot.jar -o false -nogui" > launch.sh   # Append To file #|reduced ram 
chmod +x launch.sh    # Make file executeable
sudo ufw allow 25565  #Open mc port
echo  "eula=true" > eula.txt # agree to mc's eula
cd /home/mc/serverfiles #navigate to the directory
sudo ./launch.sh   #run the script to launch the server 






//forge-1.12.2-14.23.5.2847-universal.jar   https://repo.spongepowered.org/maven/org/spongepowered/spongeforge/1.12.2-2838-7.3.1-RC4082/spongeforge-1.12.2-2838-7.3.1-RC4082.jar
// minecraft_server.1.12.2.jar  //sponge?  https://launcher.mojang.com/mc/game/1.12.2/server/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar

