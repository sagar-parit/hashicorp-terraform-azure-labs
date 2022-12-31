# 7. Terraform Variables Overview
  - <i><b>Terraform Variables</i></b> are kind of input parameters for a Terraform Resources or Modules, so users can customize behavior without editing the source code.
  - Variables blocks are basically for requesting from or publishing named values
  - When you declare variables in the root module of your configuration, you can set their values using CLI options and environment variables
  - When you declare them in child modules, the calling module should pass values in the module block.

  ## 7.1 Terraform Variable Block: Syntax
  ```terraform   
     variable "variable_name" {
        type    = string/number/bool
        default = "default_value"
     }
   ```
  ## 7.2 Terraform Variable Block: Examples
  ```terraform   
     variable "env_type" {
        type    = string
     }
  ```

  ```terraform   
     variable "image_id" {
        type    = string
        default = "ami-xxxxxxxxxxxxx"
     }
  ```
  
  ```terraform   
     variable "availability_zone_names" {
        type    = list(string)
        default = ["us-west-1a","us-west-1b","us-west-1c"]
     }
   ```
   
   ## 7.3 Terraform Variable: Arguments (or properties)
   Terraform has following optional arguments for variable declarations:

   - <b>default</b> - A default value which then makes the variable optional.
   - <b>type</b> - This argument specifies what value types are accepted for the variable.
   - <b>description</b> - This specifies the input variable's documentation.
   - <b>validation</b> - A block to define validation rules, usually in addition to type constraints.
   - <b>sensitive</b> - Limits Terraform UI output when the variable is used in configuration.
   - <b>nullable</b> - Specify if the variable can be null within the module.
   
   ## 7.4 Terraform Variable: Data Types  
   - The type argument in a variable block allows you to restrict the type of value that will be accepted as the value for a variable.
   - The <b><i>Type</i></b> constraint in the Variable block is an optional argument however is recommended.
   - If no type constraint is set then a value of any type is accepted.
   - Below are the supported data types:
       - string
       - number
       - bool
       - list(TYPE)
       - set(TYPE)
       - map(TYPE)
   
   
   ## 7.5 Reference Links
   - [Terraform Input Variables Documentation](https://developer.hashicorp.com/terraform/language/values/variables)
      
