pipeline {
    agent any

    stages {
        stage('Fetching cluster Infrastructure Code') {
            steps {
                git branch: 'main', credentialsId: 'gitcred', url: 'https://github.com/manojsa5855/K8scluster_infra.git'
            }
        }

        stage('Terraform Init and Apply') {
            steps {
                script {
                    //sh 'az login'
                    sh 'terraform init -reconfigure'
                    sh 'terraform $(terraform) --auto-approve --target=module.$(module)'
                }
            }
        }

        stage('Configure Ansible') {
            steps {
                script {
                    sh 'echo "[Master]" > /etc/ansible/hosts'
                    sh 'az vm show -d -g Dev-RG -n master-vm --query publicIps -o tsv >> /etc/ansible/hosts'
                    sh 'echo "[worker]" >> /etc/ansible/hosts'
                    sh 'az vm show -d -g Dev-RG -n worker-vm --query publicIps -o tsv >> /etc/ansible/hosts'
                }
            }
        }

        stage('Run Ansible Playbook') {
            steps {
                script {
                    sh 'ansible-playbook site.yml'
                }
            }
        }
    }
}
