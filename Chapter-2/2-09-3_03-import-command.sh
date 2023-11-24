aws cloudformation create-change-set \
    --stack-name import-sample --change-set-name ImportChangeSet \
    --change-set-type IMPORT \
    --resources-to-import  file://ResourcesToImport.txt \
    --capabilities  CAPABILITY_NAMED_IAM \
    --on-stack-failure DELETE \
    --template-body file://autoscaling.yaml \
    --parameters ParameterKey=Subnets,ParameterValue="subnet-01f1ddadf2ca11880\,subnet-0232457b7782d11cf" \
     ParameterKey=SecurityGrps,ParameterValue="sg-00750613fb362acc8"
