variable "replicas_count" {
  type = string
}

variable "ami"{
  type = string 

}

variable "instance_type" {
    type = string
}

variable "subnet_id" {
    type = string
}
 variable "security_groups_ids"{
    type = list(string)
}

variable "key_name" {
    type = string
}

variable "use_public_ip" {
    type = bool
}

variable "root_volume_size" {
    type = string
}

variable "instance_tags" {
    type = map(string)
    default = {}
}

variable "user_data" {
    type = string
}