# AWS Configure
export AWS_PROFILE=default
acl() {
    aws configure list
    kubectl config current-context
}
aclanistar() {
    export AWS_PROFILE=default
    #kubectl config use-context arn:aws:eks:us-east-1:300380593535:cluster/dev-cluster
    kubectl config use-context arn:aws:eks:us-east-1:300380593535:cluster/dev-cluster
    echo "dev"
}
aclanistar-prod() {
    export AWS_PROFILE=prodaccess
    kubectl config use-context arn:aws:eks:eu-west-2:022866771242:cluster/prod-cluster
    echo "Prodaccess"
}
aclanistar-stage() {
    export AWS_PROFILE=lanistar-stage
    kubectl config use-context arn:aws:eks:eu-west-2:188079202311:cluster/staging-cluster
}

aclanistar-newprod() {
    export AWS_PROFILE=lanistar-prod-v2
    kubectl config use-context arn:aws:eks:eu-west-2:267925113789:cluster/EKS-Prod-Cluster
}

aclanistar-EKSDev() {
    export AWS_PROFILE=dev2
    kubectl config use-context arn:aws:eks:eu-west-2:571075478230:cluster/EKS-Dev-Cluster
}