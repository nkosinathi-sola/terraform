# Terraform

### What is Terraform

Terraform is an infrastructure management tool made by HashiCorp that lets you provision, manage and maintain Cloud resources, like servers, networking, storage, et 
cetera, all in one centralized set of code. So Terraform is a tool, command line program you run to define and make changes to your infrastructure. But Terraform is also a 
language that defines those changes. Terraform is for managing the base infrastructure itself. For example, creating a server instance and placing it behind a load balancer. 
Terraform can't really change what's running on that server once it's deployed. For that you'd need a config management tool or some other method. So Terraform will let you 
create the server and then you might use something like Puppet to turn that server into a web server with your specific application code running on that. You might think of 
Terraform as setting up a blank canvas. But you'll still need other tools to paint the picture. It is possible to run a tool like Puppet on a system using a Terraform feature 
called Provisioners. But we're intentionally not covering them in this course. The official Terraform docs describe Provisioners as a last resort. And I agree. Although I can 
see how they could be amazingly powerful if you're already using config management. We don't want to set them up right from the beginning. So if we won't use config management, 
what's our other option? Terraform is really well suited to deploy pre made server images. Where all the configuration is either already set or is looked up at run time. 
You'll still need to create a base image and there's another great Hashicorp tool for that called Packer. If you set things up correctly with a load balancer and an application 
that can tolerate cycling server instances, you can use Terraform to maintain and update systems by destroying and replacing them with new instances. The purest form of this 
approach is called immutable infrastructure. Where even the system dis are read only and config and software can only be updated by replacing the instance. Even if you don't go 
to that extreme, being able to freely throw away and replace any instance is a total game changer. For me that leap has drastically reduced my background anxiety around site 
stability and on-call shifts. Finally we get to containers. Terraform is able to manage these. Terraform can work directly with Docker and Kubernetes offering a couple of 
approaches for container-based workload. Kubernetes could also be paired with say, Amazon's Kubernetes support or through another cloud provider. You could even use Terraform to 
provision a Kubernetes cluster on a Cloud provider. And then use the Terraform Kubernetes provider to provision containers on that cluster.