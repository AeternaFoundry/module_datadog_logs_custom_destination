variable "logs_custom_destinations" {
  description = <<EOT
Map of logs_custom_destinations, attributes below
Required:
    - name
Optional:
    - enabled
    - forward_tags
    - forward_tags_restriction_list
    - forward_tags_restriction_list_type
    - query
    - elasticsearch_destination (block):
        - basic_auth (optional, block):
            - password (required)
            - username (required)
        - endpoint (required)
        - index_name (required)
        - index_rotation (optional)
    - http_destination (block):
        - basic_auth (optional, block):
            - password (required)
            - username (required)
        - custom_header_auth (optional, block):
            - header_name (required)
            - header_value (required)
        - endpoint (required)
    - microsoft_sentinel_destination (block):
        - client_id (required)
        - data_collection_endpoint (required)
        - data_collection_rule_id (required)
        - stream_name (required)
        - tenant_id (required)
    - splunk_destination (block):
        - access_token (required)
        - endpoint (required)
        - sourcetype (optional, block):
            - value (optional)
EOT

  type = map(object({
    name                               = string
    enabled                            = optional(bool)
    forward_tags                       = optional(bool)
    forward_tags_restriction_list      = optional(list(string))
    forward_tags_restriction_list_type = optional(string)
    query                              = optional(string)
    elasticsearch_destination = optional(list(object({
      basic_auth = optional(list(object({
        password = string
        username = string
      })))
      endpoint       = string
      index_name     = string
      index_rotation = optional(string)
    })))
    http_destination = optional(list(object({
      basic_auth = optional(list(object({
        password = string
        username = string
      })))
      custom_header_auth = optional(list(object({
        header_name  = string
        header_value = string
      })))
      endpoint = string
    })))
    microsoft_sentinel_destination = optional(list(object({
      client_id                = string
      data_collection_endpoint = string
      data_collection_rule_id  = string
      stream_name              = string
      tenant_id                = string
    })))
    splunk_destination = optional(list(object({
      access_token = string
      endpoint     = string
      sourcetype = optional(list(object({
        value = optional(string)
      })))
    })))
  }))
}

