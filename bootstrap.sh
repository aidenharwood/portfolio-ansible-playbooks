# Ensure Ansible is installed
sudo apt update
sudo apt install -y ansible

ansibleDir="~/.portfolio-ansible-playbooks"
ansiblePlaybook="playbooks/kubernetes.yml"

# Clone playbook git repo
if [ ! -d $ansibleDir ]; then
    mkdir -p $ansibleDir
    cd $ansibleDir
    git clone https://github.com/aidenharwood/portfolio-ansible-playbooks.git .
fi

# Run Ansible playbook
ansible-playbook -i localhost, $ansiblePlaybook

$crontab = "0 0 * * * cd $ansibleDir && git pull origin main && ansible-playbook -i localhost, $ansiblePlaybook"
#(crontab -l 2>/dev/null; echo "$crontab") | crontab -
