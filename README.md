# Terraform Stacks Template

This repository provides a foundational template for bootstrapping new infrastructure projects using Terraform Stacks and the `terraform stack create -with-template` CLI command. It's designed to offer a clear, commented structure that promotes best practices and simplifies the initial setup of your infrastructure as code.

## Purpose
The primary goal of this template is to accelerate the creation of new Terraform stacks. By leveraging `terraform stack create -with-template`, you can quickly provision a new stack based on this well-organized and documented structure.

## Usage
Update the `components.tfstack.hcl` and `deployments.tfdeploy.hcl` files to
define your components and deployments, respectively.

**Next, use the `terraform stack init` command to create a new provider lock file
and initialize the stack.** The project files can be added to version control
after initialization.

## Structure

- `components.tfstack.hcl`: A file that declares the components to be used within this stack. It includes metadata such as the component name and inputs, along with the required Terraform version, provider declarations, and provider configurations. For the purpose of this template, a single component named `example` has been included. You can add more components as needed.

- `deployments.tfdeploy.hcl`: This file declares the deployments to be used within this stack. It defines the input values to be used for the component variables declared in `components.tfstack.hcl`. For the purpose of this template, a single deployment named `single` has been defined. You can add more deployments as needed.

example/: A Terraform module containing the definiton of the example Terraform Stack component. This module provisions one more instances of `null_resource` to simulate actual infrastructure provisioning. It serves as a basic example of how to structure your Terraform Stacks component code, and can be extended or modified to suit your specific needs.
