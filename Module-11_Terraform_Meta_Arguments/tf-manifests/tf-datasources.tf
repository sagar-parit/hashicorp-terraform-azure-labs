# Datasources
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription
data "azurerm_subscription" "current" {
}

# To test above azurerm_subscription Data source, display responses using o/p 
# Subscription Name 
output "current_subscription_display_name" {
  value = data.azurerm_subscription.current.display_name
}

# Subscription_id 
output "current_subscription_id" {
  value = data.azurerm_subscription.current.subscription_id
}

# Subscription spending limit
output "current_subscription_spending_limit" {
  value = data.azurerm_subscription.current.spending_limit
}

