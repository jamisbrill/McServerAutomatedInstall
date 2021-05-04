#!/bin/bash
echo "please run with sudo"
sudo apt-get install default-jdk #install java
useradd -m -d /home/mc -s /bin/bash -c "mc server user" -U mc #create a seggregated user
echo "please enter a pass for your new user"
passwd mc # User sets password
mkdir /home/mc/serverfiles #create directory to store server files
cd /home/mc/serverfiles # navigate to dir
curl --output spigot.jar https://cdn.getbukkit.org/spigot/spigot-1.16.5.jar # Download spigot // Update this path 
echo "java -Xms1024M -Xmx3024M -jar spigot.jar -o false -nogui" > launch.sh   # Append To file
chmod +x launch.sh    # Make file executeable
sudo ufw allow 25565  #Open mc port
echo  "eula=true" > eula.txt # agree to mc's eula
echo  "navigate to the directory /home/mc/serverfiles/ and run sudo ./launch.sh" # Run to start the server 
