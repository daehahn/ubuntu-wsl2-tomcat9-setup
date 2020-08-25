# Step 1 — Install Java
#sudo apt-get update
#sudo apt-get install openjdk-8-jdk

# Step 2 — Create Tomcat User
sudo groupadd tomcat
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat

# Step 3 — Install Tomcat
#cd ~
curl -O https://mirror.olnevhost.net/pub/apache/tomcat/tomcat-9/v9.0.37/bin/apache-tomcat-9.0.37.tar.gz

sudo mkdir /var/lib/tomcat9
sudo tar xzvf apache-tomcat-*tar.gz -C /var/lib/tomcat9 --strip-components=1

sudo cp ./tomcat9.service /etc/systemd/system

# Step 4 — Update Permissions
cd /var/lib/tomcat9
sudo chgrp -R tomcat /var/lib/tomcat9
sudo chmod -R g+r conf
sudo chmod g+x conf
sudo chown -R tomcat webapps/ work/ temp/ logs/

# Step 5 — Create a systemd Service File
sudo update-java-alternatives -l
#sudo cp ~/tomcat9.service /etc/systemd/system

sudo systemctl daemon-reload
sudo systemctl start tomcat9
sudo systemctl status tomcat9

# Step 6 — Adjust the Firewall and Test the Tomcat Server
sudo ufw allow 8080
cmd.exe /C start http://localhost:8080
sudo systemctl enable tomcat9

