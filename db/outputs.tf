output "db_name" {
  value = "${var.db_name}"
}

output "db_username" {
  value = "${var.db_username}"
}

output "db_password" {
  value = "${var.db_password}"
}

output "db_server" {
  value = "${aws_db_instance.ckan.address}"
}

output "mysql_db_name" {
  value = "${var.mysql_db_name}"
}

output "mysql_db_username" {
  value = "${var.mysql_db_username}"
}

output "mysql_db_password" {
  value = "${var.mysql_db_password}"
}

output "mysql_db_server" {
  value = "${aws_db_instance.mysql.address}"
}