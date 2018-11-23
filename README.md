# My sh scripts note

## Firewall ubuntu
```bash
# install
sudo apt-get install ufw
# Allow ssh connection
sudo ufw allow ssh
# allow port
sudo ufw allow 2222
```
See [more](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-with-ufw-on-ubuntu-14-04)

## Create SSH key
```
ssh-keygen -t rsa -C "your_email@example.com"
```

## SCP
```bash
# download: remote -> local
scp user@remote_host:remote_file local_file 
```
```bash
# upload: local -> remote
scp local_file user@remote_host:remote_file
```

## Delete folder
```
rm -rf folder_name
```

## Start/Stop/Restart serivice on Ubuntu
```bash
#start
sudo systemctl start service_name
#restart
sudo systemctl restart service_name
```

## PM2 env
```js
// ecosystem.config.js
module.exports = {
  apps : [
      {
        name: "myapp",
        script: "./app.js",
        watch: true,
        env: {
            "PORT": 3000,
            "NODE_ENV": "development"
        },
        env_production: {
            "PORT": 80,
            "NODE_ENV": "production",
        }
      }
  ]
}
```
Here the default environment is in the env, but you can decide to use `env_production` by `using pm2 start ecosystem.config.js --env production`.

See more [document](http://pm2.keymetrics.io/docs/usage/environment/)