variable "env" {
  default = "test"
}

variable "aws_region" {
  default = "us-east-1"
}

variable "db_allocated_storage" {
  default = "10"
}

variable "db_storage_type" {
  default = "gp2"
}

variable "db_engine" {
  default = "postgres"
}

variable "db_engine_version" {
 default = "9.6.6"
}

variable "db_instance_class" {
  default = "db.t2.xlarge"
}

variable "db_name" {
  default = "ckan"
}

variable "db_username" {
  default = "ckan"
}

variable "db_password" {
  default = "ckanckan"
}

variable "db_subnet_group_name" {
  default = "ckan_database_subnet_group"
}

variable "db_parameter_group_name" {
  default = "default.postgres9.6"
}

variable "db_skip_final_snapshot" {
  default = "true"
}

variable "db_multi_az" {
  default = "false"
}

#Mysql variables except env and region


variable "mysql_db_allocated_storage" {
  default = "20"
}

variable "mysql_db_storage_type" {
  default = "gp2"
}

variable "mysql_db_engine" {
  default = "mysql"
}

variable "mysql_db_engine_version" {
 default = "5.6.39"
}

variable "mysql_db_instance_class" {
  default = "db.t2.large"
}

variable "mysql_db_name" {
  default = "mysql"
}

variable "mysql_db_username" {
  default = "mysql"
}

variable "mysql_db_password" {
  default = "mysqlmysql"
}

variable "mysql_db_subnet_group_name" {
  default = "mysql_database_subnet_group"
}

variable "mysql_db_parameter_group_name" {
  default = "default.mysql5.6.39"
}

variable "mysql_db_skip_final_snapshot" {
  default = "true"
}

variable "mysql_db_multi_az" {
  default = "false"
}
