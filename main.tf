provider aws {
    region = var.region
}

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
}

terraform {
  backend "s3" {
    bucket = "kaizen-aidyni"
    key    = "terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}

variable region {
    
}

variable ami {

}

variable instance_type {

}