# write stackset name
ssname=stackset-sample
aws cloudformation list-stack-instances --stack-set-name $ssname |\
jq -r '.Summaries[]|[.Account,.Region]|join(" --stack-instance-region ")'|\
xargs -L1  aws cloudformation describe-stack-instance \
 --stack-set-name $ssname --stack-instance-account |\
jq -r '.StackInstance|{StackSetId,Account,Region,ParameterOverrides}'
ssname=
