# This repository will create the Google Cluster and nodepool along with VPC and subnet. 

[1] Simply clone the repo. 

$ git clone <URL/../../sharmapravin1001.git>

[2] Ensure latest version of terraform has been installed. 

$ terraform version


[3] At the minimal, update the <project_id> in variable.tf file to use all terraform scripts.

[4] Change directory where all .tf files are located and run the following 

$ terraform init 

$ terraform plan

$ terraform apply
