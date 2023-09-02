variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "node_min_size" {
  description = "min size of eks nodes in cluster"
  type        = string
  default     = "1"
}

variable "node_max_size" {
  description = "max size of eks nodes in cluster"
  type        = string
  default     = "2"
}

variable "node_desired_size" {
  description = "desired size of eks nodes in cluster"
  type        = string
  default     = "1"
}