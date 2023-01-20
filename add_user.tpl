#! /bin/bash
sudo adduser --disabled-password --gecos '' ${user}
sudo mkdir -p /home/${user}/.ssh
sudo touch /home/${user}/.ssh/authorized_keys
sudo echo ${ssh_pub_key} > authorized_keys
sudo mv authorized_keys /home/${user}/.ssh
sudo chown -R ${user}:${user} /home/${user}/.ssh
sudo chmod 700 /home/${user}/.ssh
sudo chmod 600 /home/${user}/.ssh/authorized_keys
sudo usermod -aG sudo ${user}
echo "${user} ALL=NOPASSWD:ALL" | sudo tee /etc/sudoers.d/${user}
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo systemctl restart sshd
