# My sh scripts note

### Firewall ubuntu
```bash
# install
sudo apt-get install ufw
# Allow ssh connection
sudo ufw allow ssh
# allow port
sudo ufw allow 2222
```
[more](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-with-ufw-on-ubuntu-14-04)

### Create SSH key
```
ssh-keygen -t rsa -C "your_email@example.com"
```