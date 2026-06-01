#!/bin/bash
echo "🚀 Début de l'installation..."

echo " Installation Docker..."
sudo apt update
sudo apt install docker.io -y
sudo systemctl enable --now docker

echo " Installation Docker Compose..."
sudo apt install docker-compose -y

echo "☸ Installation kubectl..."
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/

echo " Installation Terraform..."
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt install terraform -y

echo "✅ Vérification des installations..."
docker --version
docker-compose --version
kubectl version --client
terraform version

echo "🎉 Installation terminée !"