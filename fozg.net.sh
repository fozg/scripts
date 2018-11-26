#!/bin/bash  
echo Welcome to Fozg.net Scripts!
RED='\033[0;31m'          
NC='\033[0m' # No Color

list_cmd() {
  echo "----------------- select -----------------"
  echo -e "${RED}1:${NC} Restart Nginx"
  echo -e "${RED}2:${NC} Deploy Tomato Server"
  echo -e "${RED}0:${NC} Exit"
  echo "You choose:"
}


restart_nginx() {
  echo "Restarting nginx..."
  ssh root@fozg.net sudo systemctl restart nginx
  echo "Done"
}

deploy_tomato_server() {
  echo "Pulling latest code..."
  ssh root@fozg.net cd /home/tomato.fozg.net && git pull
  echo "Restart tomato service"
  ssh root@fozg.net pm2 restart tomato
  echo "Done"
}

while [ "$INPUT_STRING" != "0" ]
do 
  list_cmd
  read INPUT_STRING
  case $INPUT_STRING in
    1)		restart_nginx	;;
    2)		deploy_tomato_server	;;
    0)		echo Bye	;;
    *)		echo "Please select a command";;
  esac
  read PRESS
done


