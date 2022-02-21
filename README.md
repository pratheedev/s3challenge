Readme

This solution is intended to create three S3 buckets.
The bucket name can be configured with variable bucket_name from main program
Once you pass the bucket_name variable,this soluton is designed
to create <bucket_name>.hourly,<bucket_name>.daily,<bucket_name>.weekly
buckets.You can also configure number of days you want to keep
your data in each S3 bucket using 3 variables of dayslist list for each of these
buckets respectively.
(As of now I havent implemented hourly data expiration in S3 bucket
as I think it need other services like sqs, lambda etc)
