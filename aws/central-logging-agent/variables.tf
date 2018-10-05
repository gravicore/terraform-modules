variable "name" {
  default     = ""
  description = "Name  (e.g. `bastion` or `db`)"
}

variable "namespace" {
  description = "Namespace (e.g. `cp` or `cloudposse`)"
  type        = "string"
}

variable "stage" {
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
  type        = "string"
}

variable "delimiter" {
  type        = "string"
  default     = "-"
  description = "Delimiter to be used between `name`, `namespace`, `stage`, etc."
}

variable "attributes" {
  type        = "list"
  default     = []
  description = "Additional attributes (e.g. `policy` or `role`)"
}

variable "tags" {
  type        = "map"
  default     = {}
  description = "Additional tags (e.g. map(`BusinessUnit`,`XYZ`)"
}

variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "retention_in_days" {
  description = "Number of days you want to retain log events in the log group"
  default     = "30"
}

variable "traffic_type" {
  description = "Type of traffic to capture. Valid values: ACCEPT,REJECT, ALL"
  default     = "ALL"
}

variable "vpc_id" {
  description = "ID of VPC"
}

variable "subnet_ids" {
  description = "IDs of subnets"
  type        = "list"
  default     = []
}

variable "eni_ids" {
  description = "IDs of ENIs"
  type        = "list"
  default     = []
}

variable "filter_pattern" {
  description = "Valid CloudWatch Logs filter pattern for subscribing to a filtered stream of log events"
  default     = "[version, account, eni, source, destination, srcport, destport, protocol, packets, bytes, windowstart, windowend, action, flowlogstatus]"
}

variable "enabled" {
  default     = "true"
  description = "Set to false to prevent the module from creating anything"
}

variable "destination_arn" {
  description = ""
  default     = ""
}

variable "root_account" {
  description = "Account number of the parent account"
  default     = ""
}

variable "account_id" {
  description = "Account number of the current account"
  default     = ""
}
