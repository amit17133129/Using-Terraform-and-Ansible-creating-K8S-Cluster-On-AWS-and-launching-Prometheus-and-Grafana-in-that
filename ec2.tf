provider "aws" {

     region = "ap-south-1"

     profile = "Amit"

}
# For Launching Ansible Node 

resource "aws_instance" "MyInstance5" {

      ami = "ami-052c08d70def0ac62"   #<------AMI_name

      instance_type = "t3.micro"

      security_groups = ["SGG1"]       #<------Security Group Name    

      key_name = "openstack"          #<------key name


      tags = {


           Name = "Ansible"   #<------Instance Name
      }


}
# For Launching Master Node

resource "aws_instance" "MyInstance6" {

      ami = "ami-052c08d70def0ac62"

      instance_type = "t3.small"        #<------- t3.small taken

      security_groups = ["SGG1"]

      key_name = "openstack"

      tags = {

           Name = "MasterNode"
      }

}
# For Launching Slave Node1
resource "aws_instance" "MyInstance7" {

      ami = "ami-052c08d70def0ac62"

      instance_type = "t3.micro"

      security_groups = ["SGG1"]

      key_name = "openstack"

      tags = {

           Name = "SlaveNode1" 
      }

}
# For Launching Slave Node2
resource "aws_instance" "MyInstance8" {

      ami = "ami-052c08d70def0ac62"

      instance_type = "t3.micro"

      security_groups = ["SGG1"]

      key_name = "openstack"

      tags = {

           Name = "SlaveNode2"
      }

}
