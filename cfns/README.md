### How to use ###
---
#### Initial Setup ####
1. aws s3api create-bucket --bucket project12-iac-cfns --region ap-south-1 --create-bucket-configuration LocationConstraint=ap-south-1
2. aws s3api put-bucket-versioning --bucket project12-iac-cfns --versioning-configuration Status=Enabled

#### Package and Deploy ####
1. aws cloudformation package --template-file cfns/prod-872290481719.yaml --output-template-file tmp/packed-prod-872290481719.yaml --s3-bucket project12-iac-cfns --region ap-south-1
2. aws cloudformation deploy --template-file /home/dsayan154/git-repos/personal/project12-IaC/tmp/packed-prod-872290481719.yaml --stack-name prod-872290481719 --capabilities CAPABILITY_NAMED_IAM

#### Cleanup ####
1. aws cloudformation delete-stack --stack-name prod-872290481719