docker build -t kenfabguzram/nodejs-app .
docker push kenfabguzram/nodejs-app
cd ..
cd ..
cd infrastructure
terraform init
terraform apply --var-file=conf/group.tfvars