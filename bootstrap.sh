# Ensure Ansible is installed
sudo apt update
sudo apt install -y ansible

# Clone playbook git repo
if [ ! -d "~/.portfolio-ansible-playbooks" ]; then
    git clone https://github.com/aidenharwood/portfolio-ansible-playbooks.git
fi

# Navigate to the playbook directory
cd ~/.portfolio-ansible-playbooks || exit

# Run Ansible playbook
ansible-playbook -i inventory playbooks/main.yml