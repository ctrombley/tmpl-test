# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

// Declare the deployments that will be used in this stack.
deployment "single" {
  // Deployment `inputs` provide values for the `variables` declared in
  // the components configuration.
  inputs = {
    instances = 1
  }
}
