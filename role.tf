

locals{
 role= csvdecode(file("../csvfiles/input.csv"))
}
#role="${csvdecode(file("var.csvfiles"))}"

resource "google_project_iam_custom_role" "ITE_FF_PR_PM_SAP_Create" {
   for_each = { for rol in local.role:rol.role_id => rol}
  role_id     = each.value.role_id
  title       = each.value.title
  description = "Fire fighter custome create role"
  #permissions = var.permission
  permissions = [each.value.access] 
  #permissions = ["cloudbuild.builds.create", "cloudbuild.builds.update", "compute.addresses.create", "compute.addresses.createInternal"]# use variable
}





