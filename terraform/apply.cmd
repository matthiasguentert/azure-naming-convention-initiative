terraform init 
terraform validate
terraform plan -out=tfplan 
terraform apply -parallelism=20 -auto-approve tfplan