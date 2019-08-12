require 'aws-sdk-s3'

Aws.config[:credentials] = Aws::Credentials.new(
  ENV['BUCKETEER_AWS_ACCESS_KEY_ID'],
  ENV['BUCKETEER_AWS_SECRET_ACCESS_KEY']
)
Aws.config[:s3_region]      = 'us-east-1'

Aws::VERSION =  Gem.loaded_specs["aws-sdk-s3"].version

S3 = Aws::S3::Client.new