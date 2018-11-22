# Download the docker images
resource "docker_image" "ubuntu" {
  name = "nginx:latest"
}

# Create a container
resource "docker_container" "ubuntu" {
  image = "${docker_image.ubuntu.latest}"
  name  = "ubuntu_container"
  must_run = "false"  
}
