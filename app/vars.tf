variable "env" {
  default = "test"
}

variable "aws_region" {
  default = "us-east-1"
}

### jumpbox ###
variable "jumpbox_ami" {
  default = "ami-a5a98fde"
}

variable "jumpbox_instance_type" {
  default = "t2.xlarge"
}

### Launch Configurations ###
variable "web_lc_name" {
  default = "catalog-web-tf"
}

variable "key_name" {
  default = "datagov-test-env"
}

## web ##
variable "web_lc_ami" {
  default = "ami-2b2f0650"
}

variable "web_lc_instance_type" {
  default = "t2.xlarge"
}

## harvester ##
variable "harvester_lc_ami" {
  default = "ami-24ddf75f"
}

variable "harvester_lc_instance_type" {
  default = "t2.xlarge"
}

## solr ##
variable "solr_lc_ami" {
  default = "ami-ffa98384"
}

variable "solr_lc_instance_type" {
  default = "t2.xlarge"
}

## inventory ##
variable "inventory_lc_ami" {
  default = "ami-24ddf75f"
}

variable "inventory_lc_instance_type" {
  default = "t2.xlarge"
}
## crm ##
variable "crm_lc_ami" {
  default = "ami-24ddf75f"
}

variable "crm_lc_instance_type" {
  default = "t2.xlarge"
}

## dashboard ##
variable "dashboard_lc_ami" {
  default = "ami-24ddf75f"
}

variable "dashboard_lc_instance_type" {
  default = "t2.xlarge"
}
## wordpress ##
variable "wordpress_lc_ami" {
  default = "ami-24ddf75f"
}

variable "wordpress_lc_instance_type" {
  default = "t2.xlarge"
}

## static ##
variable "static_lc_ami" {
  default = "ami-24ddf75f"
}

variable "static_lc_instance_type" {
  default = "t2.xlarge"
}

### Auto-Scaling Groups ###

## web ##
variable "asg_web_mix_size" {
  default = "5"
}

variable "asg_web_max_size" {
  default = "5"
}

variable "asg_web_desired_capacity" {
  default = "5"
}

## harvester ##
variable "asg_harvester_mix_size" {
  default = "4"
}

variable "asg_harvester_max_size" {
  default = "4"
}

variable "asg_harvester_desired_capacity" {
  default = "4"
}

## solr ##
variable "asg_solr_mix_size" {
  default = "3"
}

variable "asg_solr_max_size" {
  default = "3"
}

variable "asg_solr_desired_capacity" {
  default = "3"
}
## inventory ##
variable "asg_inventory_mix_size" {
  default = "2"
}

variable "asg_inventory_max_size" {
  default = "2"
}

variable "asg_inventory_desired_capacity" {
  default = "2"
}
## crm ##
variable "asg_crm_mix_size" {
  default = "2"
}

variable "asg_crm_max_size" {
  default = "2"
}

variable "asg_crm_desired_capacity" {
  default = "2"
}
## dashboard ##
variable "asg_dashboard_mix_size" {
  default = "2"
}

variable "asg_dashboard_max_size" {
  default = "2"
}

variable "asg_dashboard_desired_capacity" {
  default = "2"
}
## wordpress ##
variable "asg_wordpress_mix_size" {
  default = "2"
}

variable "asg_wordpress_max_size" {
  default = "2"
}

variable "asg_wordpress_desired_capacity" {
  default = "2"
}
## static ##
variable "asg_static_mix_size" {
  default = "1"
}

variable "asg_static_max_size" {
  default = "1"
}

variable "asg_static_desired_capacity" {
  default = "1"
}
