resource "aws_instance" "Linux" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  

  tags = merge(
    {
      "Name" = var.instance_name
    },
    var.tags
  )
}