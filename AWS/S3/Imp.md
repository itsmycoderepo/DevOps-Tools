Terraform lifecycle arguments
=============================
1. create_before_destroy
2. prevent_destroy
3. ignore_changes
4. replace_triggered_by


Terraform Taints:
=============================
These are used to manually mark, a terraform managed resource as tainted.
Once the resource is marked as tainted it will be destroyed and re created on the next apply

To taint a resource                             --> terraform taint <resource_type>.<resource_name>

To untaint a resource                           --> terraform untaint <resource_type>.<resource_name>

To list the resources managed by Terraform      --> terraform state list

To get information about Particular resource    --> terraform state show <resorce-type>.<resource_name>

Resource Dependency:
=============================
- Terraform automatically gathers, when one resource depend on anathor by studying the resource attribute
used.

- If you want to explicitly mention dependencies between resources that are not visible to terraform we 
can use depends on argument.


**Implicit dependency:** This refers to a relationship between resources that Terraform automatically understands
based on the configuration. It means that Terraform can determine the order in which resources should be created
or updated without explicit instructions from the user.

**Explicit dependency**: This is a dependency relationship that you define explicitly in your Terraform configuration. 
You specify that one resource depends on another, ensuring Terraform creates or updates resources in the correct order 
based on your instructions.

Terraform Provisioners
=============================
Provisioners in Terraform are used to execute scripts or commands on a local machine or a remote resource after (or before)
the resource is created or destroyed.

Types of Provisioners
-----------------------------
1. local-exec
-----------------------------
Runs a command on the machine where Terraform is executed.

Example:

resource "aws_instance" "web" {
  ami           = "ami-123456"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> servers.txt"
  }
}

2. remote-exec
-----------------------------
Runs commands inside the created resource using SSH (Linux) or WinRM (Windows).

Example:

resource "aws_instance" "web" {

  ami = "ami-123456"
  instance_type = "t2.micro"

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("mykey.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {

    inline = [
      "sudo apt update",
      "sudo apt install nginx -y",
      "sudo systemctl start nginx"
    ]
  }
}

Terraform flow:

Create EC2 --> SSH into EC2 -->Run apt update --> Install nginx --> Start nginx

3. file Provisioner
-----------------------------
Copies files from the local machine to the remote machine.

Example:

resource "aws_instance" "web" {

  connection {
    type = "ssh"
    user = "ubuntu"
    private_key = file("mykey.pem")
    host = self.public_ip
  }

  provisioner "file" {
    source      = "index.html"
    destination = "/tmp/index.html"
  }
}

This copies:

Local
index.html
      │
      ▼
EC2:/tmp/index.html










