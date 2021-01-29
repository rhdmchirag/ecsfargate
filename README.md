# Welcome to our auto-scaling repository
# ecsfargate
# Aws Blog for Create ECS Fargate with Auto scaling  
https://aws.amazon.com/blogs/containers/ci-cd-pipeline-for-testing-containers-on-aws-fargate-with-scaling-to-zero/

# Steps:
1. Need to Create one s3 bucket with public access for Cloudformation Stack create.
2. Clone all content from this repo
3. Upload all Cloudformation file from local repo to our s3 bucket
4. Now create cloudformation stack using this link https://<YOUR_BUCKET_NAME>.s3.amazonaws.com/aws-autostart-pipeline.yaml
5. After Check stack event all is created successfully or not.
6. go to aws pipeline and check Git is connected or not
7. If connected then ok otherwise Add Credentials 
8. Then check with Release Build.
