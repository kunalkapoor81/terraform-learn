provider "aws" {

    region = "us-west-1"

  
}




variable "cidr_blocks" {
    description = "CIDR blocks for VPCs and Subnets"
    type = list(object({
      cidr_block = string
      name = string 
    }))
  
}

resource "aws_vpc" "development-vpc" {
    cidr_block = var.cidr_blocks[0].cidr_block

    tags = {
      Name: var.cidr_blocks[0].name


    }
    
  
}

resource "aws_subnet" "dev-subnet-1" {

    vpc_id = aws_vpc.development-vpc.id
    cidr_block = var.cidr_blocks[1].cidr_block
    availability_zone = "us-west-1a"
    tags = {
      Name: var.cidr_blocks[1].name
    }
    
  
}

# data "aws_vpc" "exisiting-vpc" {
#     default = true
# }


# resource "aws_subnet" "dev-subnet-2" {

#     vpc_id = data.aws_vpc.exisiting-vpc.id
#     cidr_block = "172.31.32.0/20"
#     availability_zone = "us-west-1a"
#     tags = {
#       Name: "subnet-2-default"
#     }
    
  
# }

