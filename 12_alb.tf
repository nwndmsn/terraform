#Application LoadBalancer Deploy
resource "aws_lb" "sje_lb" {
  name               = "sje-alb" 
  internal           = false  
  load_balancer_type = "application"
  security_groups    =  [aws_security_group.sje_websg.id]
  subnets            =  [aws_subnet.sje_puba.id,aws_subnet.sje_pubc.id] 
  
  tags = {
    Name = "sje-alb"
  }
}  