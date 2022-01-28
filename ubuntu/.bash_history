curl https://raw.githubusercontent.com/ShubhamTatvamasi/docker-install/master/docker-install.sh | sh
sudo apt update
sudo apt install -y     apt-transport-https     ca-certificates     curl     gnupg     lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER
docker ps
LATEST_VERSION=$(curl -s https://github.com/docker/compose/releases/latest | grep -o "v[0-9]\.[0-9]*\.[0-9]*")
sudo curl -L "https://github.com/docker/compose/releases/download/$LATEST_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker ps
