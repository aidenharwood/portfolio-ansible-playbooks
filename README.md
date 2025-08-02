# Portfolio Ansible Playbooks
This repository contains Ansible playbooks for automating tasks and managing infrastructure.

## What does it do?
 - Clones this repo to ~/.portfolio-ansible-playbooks
 - Runs the `playbooks/main.yaml` playbook
 - Sets up a crontab to pull and execute this playbook at 00:00

## How do I use it?
Run the bootstrap script:
    ```bash
    curl -sSL https://raw.githubusercontent.com/aidenharwood/portfolio-ansible-playbooks/main/bootstrap.sh | bash 
    ```