output "users_lookup_id" {
  description = "Map of id values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.azuread_users.users_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "users_lookup_employee_ids" {
  description = "Map of employee_ids values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.azuread_users.users_lookup : k => v.employee_ids if v.employee_ids != null && length(v.employee_ids) > 0 }
}
output "users_lookup_ignore_missing" {
  description = "Map of ignore_missing values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.azuread_users.users_lookup : k => v.ignore_missing if v.ignore_missing != null }
}
output "users_lookup_mail_nicknames" {
  description = "Map of mail_nicknames values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.azuread_users.users_lookup : k => v.mail_nicknames if v.mail_nicknames != null && length(v.mail_nicknames) > 0 }
}
output "users_lookup_mails" {
  description = "Map of mails values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.azuread_users.users_lookup : k => v.mails if v.mails != null && length(v.mails) > 0 }
}
output "users_lookup_object_ids" {
  description = "Map of object_ids values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.azuread_users.users_lookup : k => v.object_ids if v.object_ids != null && length(v.object_ids) > 0 }
}
output "users_lookup_return_all" {
  description = "Map of return_all values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.azuread_users.users_lookup : k => v.return_all if v.return_all != null }
}
output "users_lookup_user_principal_names" {
  description = "Map of user_principal_names values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.azuread_users.users_lookup : k => v.user_principal_names if v.user_principal_names != null && length(v.user_principal_names) > 0 }
}
output "users_lookup_users" {
  description = "Map of users values across all users_lookup, keyed the same as var.users_lookup"
  value       = { for k, v in data.azuread_users.users_lookup : k => v.users if v.users != null && length(v.users) > 0 }
}

