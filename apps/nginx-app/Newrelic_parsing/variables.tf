variable "rules" {
  description = "Map of rule_key => rule object. When provided, module will create one parsing rule per map entry. Each object should contain: name, attribute, enabled, grok_pattern, lucene_query, nrql_query."
  type = map(object({
    name         = string
    attribute    = string
    enabled      = bool
    grok_pattern = string
    lucene_query = string
    nrql_query   = string
  }))
  default = {}
}

variable "name" {
  description = "Single-rule fallback: name"
  type        = string
  default     = ""
}

variable "attribute" {
  description = "Single-rule fallback: attribute"
  type        = string
  default     = ""
}

variable "enabled" {
  description = "Single-rule fallback: enabled"
  type        = bool
  default     = true
}

variable "grok_pattern" {
  description = "Single-rule fallback: grok pattern"
  type        = string
  default     = ""
}

variable "lucene_query" {
  description = "Single-rule fallback: lucene query"
  type        = string
  default     = ""
}

variable "nrql_query" {
  description = "Single-rule fallback: nrql query"
  type        = string
  default     = ""
}

variable "license_secret_arn" {
  description = "(Optional) ARN or name of the AWS Secrets Manager secret that stores the New Relic license/api key. When set, the module will read this secret and use it as the New Relic API key."
  type        = string
  default     = ""
}

variable "secret_json_key" {
  description = "(Optional) If the secret value is a JSON object, this is the key name to extract the API key from. If empty, the secret_string will be used directly."
  type        = string
  default     = ""
}

variable "license_key" {
  description = "(Optional) Direct license/api key fallback. If `license_secret_arn` is provided the secret value takes precedence; otherwise use this value." 
  type        = string
  default     = ""
}
