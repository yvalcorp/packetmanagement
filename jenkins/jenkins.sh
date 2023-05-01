#!/bin/bash
## @Autor : Yvalcorp
# Description : Install and configure jenkins on Ubuntu 18.04 and 20.04
# Date : 05/11/2022


# First, update the package index:
sudo apt update -y
			
# Remove all installed java
sudo apt remove java* -y

		
# Execute the following command to install the default Java Runtime Environment (JRE), which will install the JRE from OpenJDK 11:
sudo apt install default-jre -y
		
# Install Java JDK
sudo apt install default-jdk -y
			
			
# Step 2: Install Jenkins
# add the repository key to the system:
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
				
# append the Debian package repository address to the server’s sources.list:
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update -y
			
# Install Jenkins
sudo apt install jenkins -y
			
# Let’s start Jenkins by using systemctl:
sudo systemctl start jenkins
sudo systemctl enable jenkins
