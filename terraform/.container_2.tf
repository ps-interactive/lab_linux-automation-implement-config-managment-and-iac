resource "docker_container" "apache" {
  image = "ubuntu/apache2:latest"  # Reference the local image
  name  = "webserver"

  ports {
    internal = 80
    external = 8000
  }

  volumes {
    container_path = "/var/www/html"
    host_path = "/home/pslearner/terraform/web/"
  }
}