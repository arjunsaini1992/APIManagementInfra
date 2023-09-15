## Prerequisites 

On Linux 

```shell
export ARM_SUBSCRIPTION_ID="<azure_subscription_id>"
export ARM_TENANT_ID="<azure_subscription_tenant_id>"
export ARM_CLIENT_ID="<service_principal_appid>"
export ARM_CLIENT_SECRET="<service_principal_password>"
```

On Windows Powershell:

```shell
$env:ARM_SUBSCRIPTION_ID="<azure_subscription_id>"
$env:ARM_TENANT_ID="<azure_subscription_tenant_id>"
$env:ARM_CLIENT_ID="<service_principal_appid>"
$env:ARM_CLIENT_SECRET="<service_principal_password>"
```

 - provider.tf contains only provider information.
 - backend.tf contains beckend info if we put tfstate into remote location.

 ```hcl
    terraform {
        required_providers {
            azurerm = {
            source  = "hashicorp/azurerm"
            version = ">= 3.45.0"

            }
        }
    }

    # Configure the Azure Provider
    provider "azurerm" {
        subscription_id = var.subscription_id
        features {}
    }

    # Configure backend for tfstate file
    terraform {
        backend "azurerm" {
            resource_group_name  = "StorageAccount-ResourceGroup"
            storage_account_name = "terraform-backend"
            container_name       = "tfstate"
            key                  = "terraform.tfstate"
        }
    }

 
 ```


## Usage of Modules

Virtual Network- It will create the virtual network and corresponding subnets.

API Mangement Service - It will create api mangement service in mentioned subnet.

App Service Plan - It will create App service Plan with staging and production slots.

 - ./Infra/main.tf file to and call the modules whichever resourse you need to create and passing the approprite values
 - variables.tf file contains variables that referred in main.tf file. 
 - tfvars - we can varablised all the parameter in main.tf and pass all the values from value.tfavrs


# Terraform Execution

Set Up Terraform:
If you haven't already, you need to have Terraform installed on your machine. You can download it from the official Terraform website and follow the installation instructions for your operating system.

Create a Directory Structure:
Create a directory for your Terraform configuration and module. Place the module code (main.tf, variables.tf, etc.) in a subdirectory. Your directory structure should look something like this:

my-terraform-project/
├── main.tf
├── variables.tf
├── outputs.tf
├── 
├──
└── modules/
    └── module-name/
        ├── main.tf
        ├── variables.tf
        ├── outputs.tf
        └── README.md


Configure Terraform Variables:

Create a terraform.tfvars or variables.auto.tfvars file to set the values for your variables. 
For example:

hcl
# value.tfvars

resource_group_name  = "my-resource-group"
location            = "East US"
app_service_plan_name = "my-app-service-plan"
staging_slot_name   = "staging-slot"
production_slot_name = "production-slot"
Initialize the Terraform Configuration:
Open a terminal in your project directory and run the following command to initialize Terraform:


terraform init
This command downloads the necessary providers and modules.

Preview the Changes:
To see what Terraform plans to do, run the following command:


terraform plan
This will show you a summary of the resources that will be created, updated, or destroyed.

Apply the Configuration:
If the plan looks good and you're ready to create the resources, run the following command:

terraform apply
Terraform will ask for confirmation. Type yes and press Enter to proceed.

Monitor the Execution:
Terraform will start creating the resources. You'll see progress information in the terminal. Wait for the process to complete.

Review the Outputs:
Once the execution is complete, Terraform will display the outputs defined in outputs.tf. You can also run terraform output to see these values.

Clean Up (Optional):
If you want to destroy the resources created by Terraform, you can run:

terraform destroy
Be cautious with this command, as it will remove the resources.

Remember to replace the placeholders in the Terraform code and variable files with your actual values.



## Providers

| Name                                                          | Version       |
|---------------------------------------------------------------|---------------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.45.0 |


## Authors - [Arjun Saimi]

