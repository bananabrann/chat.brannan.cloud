resource "digitalocean_project" "project" {
	name = "chat.brannan.cloud"
	description = "A project for the chat-brannan-cloud"
	environment = "Production"
	resources = [ digitalocean_droplet.web.urn ]
	is_default = false
}
