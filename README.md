Introduction
=============

This solution is intended to create three S3 buckets.

The bucket name can be configured with variable bucket_name from main program

Once you pass the bucket_name variable,this soluton is designed

to create <bucket_name>.hourly,<bucket_name>.daily,<bucket_name>.weekly

buckets.
You can also configure number of days you want to keep

your data in each S3 bucket using 3 variables of dayslist list for each of these

buckets respectively.

(As of now I havent implemented hourly data expiration in S3 bucket

as I think it need other services like sqs, lambda etc)

Requirement to run:
===================
This can be run on Linux and Windows or Mac.

Here I am providing details about Linux

1)Linux machine with Teraform and AWS CLI installed and AWS credentials exported

2)Terraform version should be > 0.14.9

How to run:
==============
1)export your AWS credentials in linux:

export AWS_ACCESS_KEY_ID= your access key

export AWS_SECRET_ACCESS_KEY= your secret access key

clone the git repo

after you have defined the variables in  terraform.tfvars

you can run 
terraform init
terraform plan
terraform apply
