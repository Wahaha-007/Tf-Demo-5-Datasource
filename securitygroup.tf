data "aws_ip_ranges" "asia_pacific_ec2" {
  regions  = ["ap-southeast-1", "ap-southeast-2"]
  services = ["ec2"]
}

resource "aws_security_group" "from_asia_pacific" {
  name = "from_asia_pacific" #Security Group Name

  ingress {
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    cidr_blocks = slice(data.aws_ip_ranges.asia_pacific_ec2.cidr_blocks, 0, 50)
  }
  tags = {
    CreateDate = data.aws_ip_ranges.asia_pacific_ec2.create_date
    SyncToken  = data.aws_ip_ranges.asia_pacific_ec2.sync_token
  }
}

