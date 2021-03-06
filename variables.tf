variable key_name {}
variable ecs_subnet {}
variable cluster_sg {}
variable cluster_name {}
variable standard_tags {}

variable container_insights {
  type        = bool
  default     = false
  description = "Controls if ECS Cluster has container insights enabled"
}

variable instance_types {
  description = "ECS node instance types. Maps of pairs like `type = weight`. Where weight gives the instance type a proportional weight to other instance types."
  type        = map(any)
  default = {
    "t3.small" = 2
  }
}

variable ebs_disks {
  description = "A list of additional EBS disks"
  type        = map(string)
  default     = {
    volume_size           = 100
    volume_type           = "gp2"
    encrypted             = true
    delete_on_termination = true
  }
}

variable ebs_delete_on_termination {
  default = true
}
variable ebs_volume_type {
  default = "gp2"
}
variable ebs_encrypted {
  default = true
}

variable cluster_min_size {
  default = 0
}
variable cluster_desired_capacity {
  default = 0
}
variable cluster_max_size {
  default = 10
}

variable force_delete {
  description = "Allows deleting the Auto Scaling Group without waiting for all instances in the pool to terminate"
  default     = true
}
variable protect_from_scale_in {
  description = "Protection from ASG to scale-in instances (turn them off)"
  default     = true
}
