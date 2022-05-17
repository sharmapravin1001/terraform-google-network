# This repository will create Google Cloud [gcp] network, subnet, one instance and its route.

[1] Simply clone the repo.

$ git clone <URL/../../sharmapravin1001.git>

[2] Ensure latest version of terraform has been installed.

$ terraform version

[3] At the minimal, update the "Your-own-path-of-id_rsa.pub" in instance.tf file to use all terraform scripts.

[4] Change directory where all .tf files are located and run the following

$ terraform init

$ terraform plan

$ terraform apply
