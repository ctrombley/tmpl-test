# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

// Declare the required providers, so that Terraform can install and use them
// https://developer.hashicorp.com/terraform/language/providers/requirements#requiring-providers
required_providers {
  null = {
    source  = "hashicorp/null"
    version = "~> 3.2.2"
  }
}

// Terraform Stacks requires explicit named configuration blocks to declare
// instances of all required_providers. The name "this" in the block below is
// arbitrary, and is used to reference this provider instance in component
// blocks.
//
// For providers that require configuration, provide the values in an inner
// `config` block, rather than at the top level of the `provider` block.
provider "null" "this" {
  // config {
  //   argument = value
  // }
}

// Declare the variables required to configure the components. Each deployment
// provides its own values for these variables in its `inputs` block.
variable "instances" {
  type = number
}

// Declare the components that will be used in this stack.
component "example" {
  // The "example" component is a standard Terraform module,
  // defined in the "./example" directory.
  source = "./example"

  // The `inputs` block provides values to the component module's variables.
  // You can reference deployment-specific `var` values here.
  inputs = {
    instances = var.instances
  }

  // Pass in the providers required by this component, matching the names used
  // in the component module's `required_providers`.
  providers = {
    null = provider.null.this
  }
}
