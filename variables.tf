variable "users_lookup" {
  description = <<EOT
Map of users_lookup, attributes below
Optional:
    - employee_ids
    - ignore_missing
    - mail_nicknames
    - mails
    - object_ids
    - return_all
    - user_principal_names
EOT

  type = map(object({
    employee_ids         = optional(list(string))
    ignore_missing       = optional(bool)
    mail_nicknames       = optional(list(string))
    mails                = optional(list(string))
    object_ids           = optional(list(string))
    return_all           = optional(bool)
    user_principal_names = optional(list(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.users_lookup : (
        v.employee_ids == null || (alltrue([for x in v.employee_ids : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.users_lookup : (
        v.mail_nicknames == null || (alltrue([for x in v.mail_nicknames : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.users_lookup : (
        v.mails == null || (alltrue([for x in v.mails : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.users_lookup : (
        v.object_ids == null || (alltrue([for x in v.object_ids : can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", x))]))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.users_lookup : (
        v.user_principal_names == null || (alltrue([for x in v.user_principal_names : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
}

