resource "aws_instance" "ec2_for_each" {
  #  for_each      = var.instance-map //toset(var.instance_name)
   ami           = var.ami_id
  instance_type = "t2.micro"
  tags = {
   Name  = var.instance-name
   Owner = "anshu.kumari@cloudeq.com"
 }
 volume_tags = {
  Name  = var.instance-name
  Owner = "anshu.kumari@cloudeq.com"
 }

}