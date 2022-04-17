# Install essentials
sudo apt-get install -y terminator git curl

# Install Taskfile
sudo snap install task --classic

# Install VS Code
sudo snap install code --classic

# Created dir required by tasks
mkdir -p .taskfiles/statusfiles
mkdir ~/.statusfiles
mkdir ~/Shared

# Clone repository for K8s clusters management
git clone https://github.com/krzwiatrzyk/local-cluster.git

# Clone repository for Ubuntu machine management
git clone https://github.com/krzwiatrzyk/ubuntu-setup.git

# Execute Ubuntu machine basic setup
cd ubuntu-setup
task
