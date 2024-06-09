
S3_STATE_BUCKET = "tf-devops-conf-management123"
S3_STATE_KEY	= "devops-demo/dev/terraform.tfstate"

TF_WORKLOAD_DIR = ./

BACKEND_ARGS = -backend=true \
			   -backend-config="bucket=$(S3_STATE_BUCKET)" \
			   -backend-config="key=$(S3_STATE_KEY)" \
			   -backend-config="encrypt=true" \
			   -backend-config="region=us-east-1" \
			   -backend-config="dynamodb_table=$(S3_STATE_BUCKET)"

ENV_ARGS =  -var="aws_access_key_id=$(AWS_ACCESS_KEY_ID)" \
			-var="aws_secret_access_key=$(AWS_SECRET_ACCESS_KEY)" \
			-var-file="dev-env.tfvars"

init:
	terraform -chdir=$(TF_WORKLOAD_DIR) init  -input=true $(BACKEND_ARGS) $(ENV_ARGS)
	
plan:
	terraform -chdir=$(TF_WORKLOAD_DIR) plan -input=false $(ENV_ARGS) -out=terraform.plan

apply:
	terraform -chdir=$(TF_WORKLOAD_DIR) apply -input=false -auto-approve terraform.plan

destroy:
	terraform -chdir=$(TF_WORKLOAD_DIR) destroy -input=false -auto-approve $(ENV_ARGS)