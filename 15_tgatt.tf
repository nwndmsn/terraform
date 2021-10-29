resource "aws_lb_target_group_attachment" "sje_lbtg_att" {
  target_group_arn      = aws_lb_target_group.sje_lbtg.arn 
  target_id             = aws_instance.sje_weba.id 
  port                  = 80
}