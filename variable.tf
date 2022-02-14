variable "role_id" {
    type = string
    default = "ITE_FF_PR_PM_SAP_Create"
}

variable "access" {
  type= list(string)
   default =  ["cloudbuild.builds.create", "cloudbuild.builds.update", "compute.addresses.create"]
    #default = []
}

#variable "csvfiles" {
#type= list(string)  
#}
#csvfiles= "./csvfiles/input.csv"
#variable "csvfiles" {
    #default = "./input.csv"
