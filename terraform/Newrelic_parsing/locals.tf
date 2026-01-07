locals {
  rules_map = length(var.rules) > 0 ? var.rules : {
    single = {
      name         = var.name
      attribute    = var.attribute
      enabled      = var.enabled
      grok_pattern = var.grok_pattern
      lucene_query = var.lucene_query
      nrql_query   = var.nrql_query
    }
  }
}
