# here we are going to see how to handle variable and make use of this to reduce issues during update_strategy

resource "aws_elb" "mk-elb" {
  name = var.elb_name
  availability_zone = var.az
  listener {
    instance_port = 8000
    instance_protocol = "http"
    lb_port = 80
    lb_protocol = "http"
  }
  health_check {
    healthy_threshold = 2
    unhealthy_threshold = 2
    timeout = 3
    target = "HTTP:8000/"
    interval = 30
  }
  cross_zone_load_balancing = true
  idle_timeout = var.timeout
  connection_draining = true
  connection_draining_timeout = var.timeout
  tage = {
    name = "mk-terraform-elb"
  }
}
