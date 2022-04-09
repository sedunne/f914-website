## outputs for workspace

output "app_id" {
  description = "ID of application."
  value       = digitalocean_app.f914-website.id
}

output "live_url" {
  description = "Live URL of the running app."
  value       = digitalocean_app.f914-website.live_url
}

output "active_deployment_id" {
  description = "Active deployment ID of application."
  value       = digitalocean_app.f914-website.active_deployment_id
}

output "updated_at" {
  description = "Time of last deployment update."
  value       = digitalocean_app.f914-website.updated_at
}
