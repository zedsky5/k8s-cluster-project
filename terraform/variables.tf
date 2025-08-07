variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default      = "terra-vpc"
}

variable "cluster_name" {
  description = "The name of the EKS cluster."
  type        = string
  default     = "terra-cluster"
}

variable "cluster_version" {
  description = "The Kubernetes version for the EKS cluster."
  type        = string
  default     = "1.30"
}

variable "worker_nodes_instance_type" {
  description = "The instance type for the EKS worker nodes."
  type        = string
  default     = "t3.micro"
}

variable "worker_nodes_desired_capacity" {
  description = "The desired number of worker nodes."
  type        = number
  default     = 1
}

variable "worker_nodes_min_size" {
  description = "The minimum number of worker nodes."
  type        = number
  default     = 1
}

variable "worker_nodes_max_size" {
  description = "The maximum number of worker nodes."
  type        = number
  default     = 3
}
