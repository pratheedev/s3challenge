/*main program for module instantiation*/

module "mys3mod"{
count=3
source="./module_s3"
bucket_name=var.bucket_name
dayslist=var.dayslist[count.index]
expiry=var.expiry[count.index]
}
