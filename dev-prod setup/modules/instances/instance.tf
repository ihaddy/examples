


resource "aws_instance" "instance" {

  ami = data.aws_ami.ubuntu.id

  instance_type = var.instance_type

  subnet_id              = var.public_subnets[0]
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  key_name = aws_key_pair.mykeypair.key_name

  tags = {
    name        = "instance-${var.ENV}"
    environment = "${var.ENV}"
  }
}

resource "aws_security_group" "allow-ssh" {
  vpc_id      = var.vpc_id
  name        = "allow-ssh-${var.ENV}"
  description = "opens port 22 for ssh"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"
    ]
  }

  tags = {
    "Name"      = "allow-ssh"
    environment = "${var.ENV}"
  }

}

resource "aws_key_pair" "mykeypair" {
  key_name   = "mykeypair-${var.ENV}"
  public_key = file("${path.root}/${var.path_to_public_key}")

}
