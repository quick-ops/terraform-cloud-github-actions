terraform {
  backend "remote" {
    organization = "quickops"

    workspaces {
      name = "quickops-github-actions"
    }
  }
}

resource null_resource hello_world {
  provisioner "local-exec" {
    command = "Hello from terraform cloud!"
  }
}
