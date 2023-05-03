set -e

PROFILE=$1

# Install essentials
sudo apt-get install -y terminator git curl

# Install Taskfile
# sudo snap install task --classic
sudo sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /usr/local/bin
# # Install VS Code
# sudo snap install code --classic

# Clone repository for machine management if it doesn't exist
test ! -d "${HOME}/.task" && git clone https://github.com/krzwiatrzyk/lib-system-manager.git ${HOME}/.task
cp ${HOME}/.task/modules/global/Taskfile.yaml ${HOME}/Taskfile.yaml

# Execute Ubuntu machine basic setup
cd ${HOME}/.task

# # First task will result with error thanks to OhMyZSH installation script - it enters new shell by default
# task || task
task ${PROFILE:-fail}