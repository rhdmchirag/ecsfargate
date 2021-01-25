BUCKET_NAME ?= your-s3-bucket-name

configure:
	@ aws s3api head-bucket --bucket "$(BUCKET_NAME)" || aws s3 mb "s3://$(BUCKET_NAME)"
	@ aws s3api put-bucket-versioning --bucket "$(BUCKET_NAME)"  --versioning-configuration Status=Enabled

deploy:
	@ aws s3 cp --recursive ./ "s3://$(BUCKET_NAME)"

clean:
	@ aws s3 rm "s3://$(BUCKET_NAME)/" --recursive

.PHONY: clean configure deploy
