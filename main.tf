resource "datadog_logs_custom_destination" "logs_custom_destinations" {
  for_each = var.logs_custom_destinations

  name                               = each.value.name
  enabled                            = each.value.enabled
  forward_tags                       = each.value.forward_tags
  forward_tags_restriction_list      = each.value.forward_tags_restriction_list
  forward_tags_restriction_list_type = each.value.forward_tags_restriction_list_type
  query                              = each.value.query

  dynamic "elasticsearch_destination" {
    for_each = each.value.elasticsearch_destination != null ? each.value.elasticsearch_destination : []
    content {
      dynamic "basic_auth" {
        for_each = elasticsearch_destination.value.basic_auth != null ? elasticsearch_destination.value.basic_auth : []
        content {
          password = basic_auth.value.password
          username = basic_auth.value.username
        }
      }
      endpoint       = elasticsearch_destination.value.endpoint
      index_name     = elasticsearch_destination.value.index_name
      index_rotation = elasticsearch_destination.value.index_rotation
    }
  }

  dynamic "http_destination" {
    for_each = each.value.http_destination != null ? each.value.http_destination : []
    content {
      dynamic "basic_auth" {
        for_each = http_destination.value.basic_auth != null ? http_destination.value.basic_auth : []
        content {
          password = basic_auth.value.password
          username = basic_auth.value.username
        }
      }
      dynamic "custom_header_auth" {
        for_each = http_destination.value.custom_header_auth != null ? http_destination.value.custom_header_auth : []
        content {
          header_name  = custom_header_auth.value.header_name
          header_value = custom_header_auth.value.header_value
        }
      }
      endpoint = http_destination.value.endpoint
    }
  }

  dynamic "microsoft_sentinel_destination" {
    for_each = each.value.microsoft_sentinel_destination != null ? each.value.microsoft_sentinel_destination : []
    content {
      client_id                = microsoft_sentinel_destination.value.client_id
      data_collection_endpoint = microsoft_sentinel_destination.value.data_collection_endpoint
      data_collection_rule_id  = microsoft_sentinel_destination.value.data_collection_rule_id
      stream_name              = microsoft_sentinel_destination.value.stream_name
      tenant_id                = microsoft_sentinel_destination.value.tenant_id
    }
  }

  dynamic "splunk_destination" {
    for_each = each.value.splunk_destination != null ? each.value.splunk_destination : []
    content {
      access_token = splunk_destination.value.access_token
      endpoint     = splunk_destination.value.endpoint
      dynamic "sourcetype" {
        for_each = splunk_destination.value.sourcetype != null ? splunk_destination.value.sourcetype : []
        content {
          value = sourcetype.value.value
        }
      }
    }
  }
}

