# Install essentials
sudo apt-get install -y terminator git curl

# Install Taskfile
sudo snap install task --classic

# Install VS Code
sudo snap install code --classic

mkdir ~/Shared

# Clone repository for Ubuntu machine management
git clone https://github.com/krzwiatrzyk/lib-system-manager.git

# Execute Ubuntu machine basic setup
cd lib-system-manager
task
