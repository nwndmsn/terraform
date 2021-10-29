resource "aws_lb_listener" "sje_lblistner" {
  load_balancer_arn       = aws_lb.sje_lb.arn
  port                    = 80
  protocol                = "HTTP"

  default_action {
    type                = "forward"
    target_group_arn    = aws_lb_target_group.sje_lbtg.arn
  }
}  