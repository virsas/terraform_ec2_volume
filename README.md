# terraform_ec2_volume

Terraform module to attach ebs volume to an ec2 instance.

## Dependencies

EBS Volume - <https://github.com/virsas/terraform_ebs_volume>
EC2 Instance - <https://github.com/virsas/terraform_ec2_instance>

you can use the amazon AMI instead if needed

EC2 Instance - <https://github.com/virsas/terraform_ec2_amazon2>

## Terraform example

``` terraform
##################
# Volume attachement
##################
module "samba1drive1" {
  source     = "github.com/virsas/terraform_ec2_volume"
  mountPoint = "/dev/sdb"
  instanceID = module.samba1.id
  volumeID   = module.drive1.id
}
```
