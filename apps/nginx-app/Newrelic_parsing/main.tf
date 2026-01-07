resource "newrelic_log_parsing_rule" "this" {
    for_each = locals.rules_map
        name      = each.value.name
        attribute = each.value.attribute
        enabled   = each.value.enabled
        grok      = each.value.grok_pattern
        lucene    = each.value.lucene_query
        nrql      = each.value.nrql_query
}

