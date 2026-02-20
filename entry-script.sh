 #!/bin/bash
sudo dnf update -y && sudo dnf install -y docker
sudo systemctl enable docker
sudo systemctl start docker   

# Wait for Docker daemon
until docker info >/dev/null 2>&1; do
  sleep 2
done

sudo usermod -aG docker ec2-user
sudo docker run -d -p 8080:80 nginx   