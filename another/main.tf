module "myvpc" {
  source      = "../modules_learn/vpc "
  vpc_cidr    = "10.0.0.0/16"
  tenancy     = "default"
  vpc_id      = module.myvpc.vpc_id
  subnet_cidr = "10.0.1.0/24"
}


module "myec2" {
  source        = "../modules_learn/ec2"
  ami_id        = "ami-006dcf34c09e50022"
  for_each =    toset(var.instance-namex)
  # instance-map = each.value
  instance-name = each.value
  #instance_type = "t2.micro"
  #subnet_id     = module.myvpc.subnet_id

}

module "mygw" {
    source = "../modules_learn/vpc"
    vpc_id = module.myvpc.vpc_id
    vpc_cidr = "10.0.0.0/16"
  
}

module "aws_s3_bucket" {
  source = "../modules_learn/s3"
  buckname = "anshu9987"
  
}