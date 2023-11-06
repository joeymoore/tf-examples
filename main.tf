variable "api_id" {}
variable "api_key" {}
provider "incapsula" {
  api_id = var.api_id
  api_key = var.api_key
}

#module "site" {
#  source = "./modules/terraform-incapsula-sites"
#  domain = "amp.impervademo.com"
#  site_ip = "a2de8337afdf148aabcccf563ebfe114-801970821.us-east-2.elb.amazonaws.com"
#  force_ssl = true
#}

#resource "incapsula_siem_connection" "test" {
#  connection_name = "TF Test"
#  path            = "incaplogs/test"
#  storage_type    = "CUSTOMER_S3_ARN"
#  account_id = "2008301"
#}
#
#resource "incapsula_siem_log_configuration" "test" {
#  configuration_name = "TF Test"
#  connection_id      = incapsula_siem_connection.test.id
#  datasets           = ["ABP"]
#  enabled            = false
#  producer           = "ABP"
#  account_id = incapsula_siem_connection.test.account_id
#}
#
#resource "incapsula_siem_log_configuration" "test_audit" {
#  configuration_name = "TF Test Audit"
#  connection_id      = incapsula_siem_connection.test.id
#  datasets           = ["AUDIT_TRAIL"]
#  enabled            = false
#  producer           = "AUDIT"
#  account_id = incapsula_siem_connection.test.account_id
#}

#resource "incapsula_waiting_room" "test" {
#  name    = "TF Test"
#  description = "Helping you wait."
#  enabled = false
#  site_id = "95652267"
#  account_id = "2008301"
#  html_template_base64 = filebase64("template.html")
#  entrance_rate_threshold = 60
#}

#resource "incapsula_subaccount" "test" {
#  sub_account_name = "TF test"
#  log_level = "full"
#  logs_account_id = 2398
#  data_storage_region = "EU"
#}

#resource "incapsula_waf_log_setup" "test" {
#  account_id = incapsula_subaccount.test.id
#  s3_access_key = ""
#  s3_secret_key = ""
#  s3_bucket_name = ""
#}