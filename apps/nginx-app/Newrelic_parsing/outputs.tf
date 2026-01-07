output "rule_ids" {
  description = "Map of rule keys => New Relic parsing rule IDs"
  value = { for k, r in newrelic_log_parsing_rule.this : k => r.id }
}
output "parsing_id" {
    value = newrelic_log_parsing_rule.sample.id
}