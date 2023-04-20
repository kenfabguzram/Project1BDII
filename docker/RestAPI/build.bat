docker build -t kenfabguzram/restful-api .
docker push kenfabguzram/restful-api
cd ..
cd ..
cd infrastructure
terraform init
terraform apply --var-file=conf/group.tfvars