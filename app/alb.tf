## web application load balancer ##
resource "aws_alb" "web_alb" {
  name            = "web-alb-test-tf"
  internal        = false
  security_groups = ["${aws_security_group.alb-sg.id}"]
  subnets         = ["${data.terraform_remote_state.vpc.public_subnets}"]
}

# web alb listeners #
resource "aws_alb_listener" "web_alb_Listener" {
  load_balancer_arn = "${aws_alb.web_alb.arn}"
  port              = "80"
  protocol          = "HTTP"

  default_action {
    target_group_arn = "${aws_alb_target_group.web_tg.arn}"
    type             = "forward"
  }
}

# web alb target groups #
resource "aws_alb_target_group" "web_tg" {
  name_prefix = "web-"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = "${data.terraform_remote_state.vpc.vpc_id}"

  health_check {
    path                = "/dataset"
  }

}

## solr application load balancer ##
resource "aws_alb" "solr_alb" {
  name            = "solr-alb-test-tf"
  internal        = true
  security_groups = ["${aws_security_group.solr-alb-sg.id}"]
  #subnets         = ["${data.terraform_remote_state.vpc.public_subnets}", ["${data.terraform_remote_state.vpc.private_subnets}"]]
  subnets         = ["${data.terraform_remote_state.vpc.public_subnets}"]
}

# solr alb listeners #
resource "aws_alb_listener" "solr_alb_Listener" {
  load_balancer_arn = "${aws_alb.solr_alb.arn}"
  port              = "8080"
  protocol          = "HTTP"

  default_action {
    target_group_arn = "${aws_alb_target_group.solr_tg.arn}"
    type             = "forward"
  }
}

# solr alb target groups #
resource "aws_alb_target_group" "solr_tg" {
  name_prefix     = "solr-"
  port            = 8080
  protocol        = "HTTP"
  vpc_id          = "${data.terraform_remote_state.vpc.vpc_id}"
}

## harvester application load balancer ##
resource "aws_alb" "harvester_alb" {
  name            = "harvester-alb-test-tf"
  internal        = true
  security_groups = ["${aws_security_group.solr-alb-sg.id}"]
  subnets         = ["${data.terraform_remote_state.vpc.public_subnets}"]
}

# harvester alb listeners #
resource "aws_alb_listener" "harvester_alb_Listener" {
  load_balancer_arn = "${aws_alb.harvester_alb.arn}"
  port              = "8080"
  protocol          = "HTTP"

  default_action {
    target_group_arn = "${aws_alb_target_group.harvester_tg.arn}"
    type             = "forward"
  }
}

# harvester alb target groups #
resource "aws_alb_target_group" "harvester_tg" {
  name_prefix     = "harv-"
  port            = 8080
  protocol        = "HTTP"
  vpc_id          = "${data.terraform_remote_state.vpc.vpc_id}"
}

## inventory application load balancer ##
resource "aws_alb" "inventory_alb" {
  name            = "inventory-alb-test-tf"
  internal        = true
  security_groups = ["${aws_security_group.solr-alb-sg.id}"]
  subnets         = ["${data.terraform_remote_state.vpc.public_subnets}"]
}

# inventory alb listeners #
resource "aws_alb_listener" "inventory_alb_Listener" {
  load_balancer_arn = "${aws_alb.inventory_alb.arn}"
  port              = "8080"
  protocol          = "HTTP"

  default_action {
    target_group_arn = "${aws_alb_target_group.inventory_tg.arn}"
    type             = "forward"
  }
}

# inventory alb target groups #
resource "aws_alb_target_group" "inventory_tg" {
  name_prefix     = "inve-"
  port            = 8080
  protocol        = "HTTP"
  vpc_id          = "${data.terraform_remote_state.vpc.vpc_id}"
}

## crm application load balancer ##
resource "aws_alb" "crm_alb" {
  name            = "crm-alb-test-tf"
  internal        = true
  security_groups = ["${aws_security_group.solr-alb-sg.id}"]
  subnets         = ["${data.terraform_remote_state.vpc.public_subnets}"]
}

# crm alb listeners #
resource "aws_alb_listener" "crm_alb_Listener" {
  load_balancer_arn = "${aws_alb.crm_alb.arn}"
  port              = "8080"
  protocol          = "HTTP"

  default_action {
    target_group_arn = "${aws_alb_target_group.crm_tg.arn}"
    type             = "forward"
  }
}

# crm alb target groups #
resource "aws_alb_target_group" "crm_tg" {
  name_prefix     = "crm-"
  port            = 8080
  protocol        = "HTTP"
  vpc_id          = "${data.terraform_remote_state.vpc.vpc_id}"
}

## dashboard application load balancer ##
resource "aws_alb" "dashboard_alb" {
  name            = "dashboard-alb-test-tf"
  internal        = true
  security_groups = ["${aws_security_group.solr-alb-sg.id}"]
  subnets         = ["${data.terraform_remote_state.vpc.public_subnets}"]
}

# dashboard alb listeners #
resource "aws_alb_listener" "dashboard_alb_Listener" {
  load_balancer_arn = "${aws_alb.dashboard_alb.arn}"
  port              = "8080"
  protocol          = "HTTP"

  default_action {
    target_group_arn = "${aws_alb_target_group.dashboard_tg.arn}"
    type             = "forward"
  }
}

# dashboard alb target groups #
resource "aws_alb_target_group" "dashboard_tg" {
  name_prefix     = "dash-"
  port            = 8080
  protocol        = "HTTP"
  vpc_id          = "${data.terraform_remote_state.vpc.vpc_id}"
}
## wordpress application load balancer ##
resource "aws_alb" "wordpress_alb" {
  name            = "wordpress-alb-test-tf"
  internal        = true
  security_groups = ["${aws_security_group.solr-alb-sg.id}"]
  subnets         = ["${data.terraform_remote_state.vpc.public_subnets}"]
}

# wordpress alb listeners #
resource "aws_alb_listener" "wordpress_alb_Listener" {
  load_balancer_arn = "${aws_alb.wordpress_alb.arn}"
  port              = "8080"
  protocol          = "HTTP"

  default_action {
    target_group_arn = "${aws_alb_target_group.wordpress_tg.arn}"
    type             = "forward"
  }
}

# wordpress alb target groups #
resource "aws_alb_target_group" "wordpress_tg" {
  name_prefix     = "word-"
  port            = 8080
  protocol        = "HTTP"
  vpc_id          = "${data.terraform_remote_state.vpc.vpc_id}"
}

## static application load balancer ##
resource "aws_alb" "static_alb" {
  name            = "static-alb-test-tf"
  internal        = true
  security_groups = ["${aws_security_group.solr-sg.id}"]
  subnets         = ["${data.terraform_remote_state.vpc.public_subnets}"]
}

# static alb listeners #
resource "aws_alb_listener" "static_alb_Listener" {
  load_balancer_arn = "${aws_alb.static_alb.arn}"
  port              = "8080"
  protocol          = "HTTP"

  default_action {
    target_group_arn = "${aws_alb_target_group.static_tg.arn}"
    type             = "forward"
  }
}

# static alb target groups #
resource "aws_alb_target_group" "static_tg" {
  name_prefix     = "stat-"
  port            = 8080
  protocol        = "HTTP"
  vpc_id          = "${data.terraform_remote_state.vpc.vpc_id}"
}
