# Force Google DNS to bypass the 127.0.0.53 loop
echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf

# Restart Docker to pick up the new network settings
sudo systemctl restart docker

# Build the image (The Kitchen)
sudo docker build -t econolite-env .
