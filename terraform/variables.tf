## workspace variables

variable "do_token" {
  type        = string
  description = "The token used to communicate with the DigitalOcean API."
  sensitive   = true
}
