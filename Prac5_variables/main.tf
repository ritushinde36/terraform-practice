//amazon + large
resource "aws_instance" "amazon_large" {
    ami = var.instance_ami_amazon
    instance_type = var.instance_type_large

    tags = {
        Name = "${var.instance_ami_amazon}_${var.instance_type_large}"
    } 
}

//ubuntu + medium
resource "aws_instance" "ubuntu_medium" {
    ami = var.instance_ami_ubuntu
    instance_type = var.instance_type_medium

    tags = {
        Name = "${var.instance_ami_ubuntu}_${var.instance_type_medium}"
    } 
}

//ubuntu + small

resource "aws_instance" "ubuntu_small" {
    ami = var.instance_ami_ubuntu
    instance_type = var.instance_type_small

    tags = {
        Name = "${var.instance_ami_ubuntu}_${var.instance_type_small}"
    } 
}

//amazon + medium
resource "aws_instance" "amazon_medium" {
    ami = var.instance_ami_amazon
    instance_type = var.instance_type_medium

    tags = {
        Name = "${var.instance_ami_amazon}_${var.instance_type_medium}"
    } 
}

//amazon + small
resource "aws_instance" "amazon_small" {
    ami = var.instance_ami_amazon
    instance_type = var.instance_type_small

    tags = {
        Name = "${var.instance_ami_amazon}_${var.instance_type_small}"
    } 
}
