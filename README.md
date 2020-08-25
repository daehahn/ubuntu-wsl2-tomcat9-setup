# ubuntu-wsl2-tomcat9-setup
Script to setup tomcat9 on current Ubuntu WSL2 images from the Windows store. 
Tested on 18.04, 20.04 and the versionless (current) version of Ubuntu from the Windows Store.
I am not responsible for broken installations, fights with your roommates and police ringing your door ;-).

*Note: I don't have the right tools to test/chagne this script at the moment. I you like to be an active maintainer, testing out PR's and updating code when necesary, please mail me (see profile). 

Instructions from [the Digitalocean community forum tutorial](https://www.digitalocean.com/community/tutorials/install-tomcat-9-ubuntu-1804) turned into a script. Thanks to [Justin](https://www.digitalocean.com/community/users/jellingwood) on the Digitalocean community! 

## Usage
You need ```git``` to be installed for the commands below to work. Use
```sh
sudo apt install git
```
to do so.
### Run the script and commands
```sh
git clone https://github.com/daehahn/ubuntu-wsl2-tomcat9-setup.git
cd ubuntu-wsl2-tomcat9-setup/
bash tomcat9-setup.sh
# Enter your password and wait until the script has finished
```
### Then follow from Step 7 of the tutorial 
```sh
https://www.digitalocean.com/community/tutorials/install-tomcat-9-ubuntu-1804

```
If you don't get an error and see a list of units, the script worked.

Have fun using systemd on your Ubuntu WSL2 image. You may use and change and distribute this script in whatever way you'd like. 
