data "azuread_users" "users_lookup" {
  for_each = var.users_lookup

  employee_ids         = each.value.employee_ids
  ignore_missing       = each.value.ignore_missing
  mail_nicknames       = each.value.mail_nicknames
  mails                = each.value.mails
  object_ids           = each.value.object_ids
  return_all           = each.value.return_all
  user_principal_names = each.value.user_principal_names

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

