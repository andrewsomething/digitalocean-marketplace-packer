workflow "New workflow" {
  on = "push"
  resolves = ["packer validate"]
}

action "packer validate" {
  uses = "docker://hashicorp/packer"
  args = "validate marketplace-image.json"
}
