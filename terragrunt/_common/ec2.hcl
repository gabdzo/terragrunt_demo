locals {
    base_source_url = "git::https://github.com/terraform-aws-modules/terraform-aws-ec2-instance.git"
}

terraform {
    source = local.base_source_url
}

inputs = {
         ami                    = "ami-0b0dcb5067f052a63"
    instance_type          = "t2.micro"

    monitoring             = true
    vpc_security_group_ids = ["sg-021f57eb4beaed920"]
    subnet_id              = "subnet-007c02fc0ce24c2e5"
}