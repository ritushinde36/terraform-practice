resource "aws_instance" "terraform_EC2" {
    ami = "ami-0182f373e66f89c85"
    instance_type = "t2.small"

    provisioner "local-exec" {
      command = "Runs when creating"
      on_failure = fail
    }

    provisioner "local-exec" {
        when = destroy
      command = "echo Runs when destroying"
    }
}