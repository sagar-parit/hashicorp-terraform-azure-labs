# 9. Terraform Locals Overview
  - A local value assigns a name to an expression, so you can use the name multiple times within a module instead of repeating the expression
  - The expressions in local values are not limited to literal constants
  - They can also reference other values in the module in order to transform or combine them, including variables, resource attributes, or other local values

  ## 9.2 Declaring a Local Value
  