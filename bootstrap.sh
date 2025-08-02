# Ensure Ansible is installed
sudo apt update
sudo apt install -y ansible

ansibleDir="/var/portfolio-ansible-playbooks"
ansiblePlaybook="playbooks/main.yaml"

# Clone playbook git repo
if [ ! -d $ansibleDir ]; then
    mkdir -p $ansibleDir
    cd $ansibleDir
    git clone https://github.com/aidenharwood/portfolio-ansible-playbooks.git .
else
    cd $ansibleDir
    git pull origin main
fi

playbookCmd="ansible-playbook -i localhost, $ansiblePlaybook --connection=local"
# Run Ansible playbook
bash -c "$playbookCmd"

crontab="0 0 * * * cd $ansibleDir && git pull origin main && $playbookCmd"
#(crontab -l 2>/dev/null; echo "$crontab") | crontab -
