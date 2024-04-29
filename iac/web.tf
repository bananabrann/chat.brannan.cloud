resource "random_id" "web" {
	byte_length = 8
}

resource "digitalocean_droplet" "web" {
	image = "ubuntu-24-04-x64"
	name = "chat-brannan-cloud-${random_id.web.hex}"
	region = "nyc1"
	size = "s-1vcpu-1gb-intel"
	monitoring = true
	ipv6 = false
	tags = [ "chat-brannan-cloud"]

	ssh_keys = [
		# data.digitalocean_ssh_key.terraform
		data.digitalocean_ssh_key.terraform.fingerprint
	]

	connection {
		host = self.ipv4_address
		user = "root"
		type = "ssh"
		private_key = file(var.pvt_key)
		timeout = "2m"
	}

	# provisioner "remote-exec" {
	# 	inline = [
	# 		"export PATH=$PATH:/usr/bin",
	# 		# install nginx
	# 		"sudo apt update",
	# 		"sudo apt install -y nginx"
	# 	]
	# }
}


