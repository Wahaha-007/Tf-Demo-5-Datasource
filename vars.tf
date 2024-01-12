variable "AWS_REGION" {
  default = "ap-southeast-1" #"eu-west-1"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1      = "ami-0b0ea68c435eb488d" #"ami-13be557e"
    us-west-2      = "ami-0688ba7eeeeefe3cd" #"ami-06b94666"
    ap-southeast-1 = "ami-0f74c08b8b5effa56" #eu-west-1 = "ami-0d729a60"
  }
}
