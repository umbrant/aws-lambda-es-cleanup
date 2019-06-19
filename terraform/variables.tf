variable "prefix" {
  default = ""
}

variable "suffix" {
  default = ""
}

variable "schedule" {
  default = "cron(0 3 * * ? *)"
}

variable "sns_alert" {
  description = "SNS ARN to pusblish any alert"
  default     = ""
}

variable "es_endpoint" {}

variable "index_regex" {
  description = "Regex matching indexes to process. This is run with Python's re.match function. By default, ever index is processed (except '.kibana')."
  default     = ".*"
}

variable "date_regex" {
  description = "Regex used to parse the timetamp from the index name. This is run with Python's re.search function, returning the first group."
  default     = "\d{4}\.\d{2}\.\d{2}"
}

variable "delete_after" {
  description = "Numbers of days to preserve"
  default     = 15
}

variable "index_format" {
  description = "Combined with 'index' varible is used to evaluate the index age"
  default     = "%Y.%m.%d"
}

variable "python_version" {
  default = "3.6"
}

variable "subnet_ids" {
  description = "Subnet IDs you want to deploy the lambda in. Only fill this in if you want to deploy your Lambda function inside a VPC."
  type        = "list"
  default     = []
}

variable "security_group_ids" {
  description = "Addiational Security Ids To add."
  type        = "list"
  default     = []
}

variable "tags" {
  description = "Tags to apply"
  default = {
    Name = "es-cleanup"
  }
}
