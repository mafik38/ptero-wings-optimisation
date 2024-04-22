if [ "$EUID" -ne 0 ]
  then echo "Please run as root."
  exit
fi

echo "Setting up Anti Disk Fill..."

curl -o /var/lib/pterodactyl/antidiskfillscript.sh https://raw.githubusercontent.com/ewn69/anti-disk-fill/main/assets/script.sh
sudo chmod -R 777 /var/lib/pterodactyl
nohup /var/lib/pterodactyl/antidiskfillscript.sh > /dev/null 2>&1 & 

echo "Anti Disk Fill has been installed."
