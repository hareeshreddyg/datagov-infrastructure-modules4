output "web_sg_id" {
  value = "${aws_security_group.web-sg.id}"
}
output "harvester_sg_id" {
  value = "${aws_security_group.harvester-sg.id}"
}
output "solr_sg.id" {
  value = "${aws_security_group.solr-sg.id}"
}
output "inventory_sg_id" {
  value = "${aws_security_group.inventory-sg.id}"
}
output "crm_sg_id" {
  value = "${aws_security_group.crm-sg.id}"
}
output "dashboard_sg_id" {
  value = "${aws_security_group.dashboard-sg.id}"
}
output "wordpress_sg_id" {
  value = "${aws_security_group.wordpress-sg.id}"
}
output "static_sg_id" {
  value = "${aws_security_group.static-sg.id}"
}
output "web_alb_dns" {
  value = "${aws_alb.web_alb.dns_name}"
}
output "solr_alb_dns" {
  value = "${aws_alb.solr_alb.dns_name}"
}
output "harvester_alb_dns" {
  value = "${aws_alb.harvester_alb.dns_name}"
}
output "inventory_alb_dns" {
  value = "${aws_alb.inventory_alb.dns_name}"
}
output "crm_alb_dns" {
  value = "${aws_alb.crm_alb.dns_name}"
}
output "dashboard_alb_dns" {
  value = "${aws_alb.dashboard_alb.dns_name}"
}
output "wordpress_alb_dns" {
  value = "${aws_alb.wordpress_alb.dns_name}"
}
output "static_alb_dns" {
  value = "${aws_alb.static_alb.dns_name}"
}
