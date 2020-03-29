#!/bin/bash

##########################################################################
##  Deploys sample solution
##
##  Parameters:
##
##  1- Name of resource group
##  2- Kusto cluster ID
##  3- Kusto cluster db

rg=$1
clusterId=$2
db=$3

echo "Resource group:  $rg"

echo
echo "Deploying ARM template"

az group deployment create -n "deploy-$(uuidgen)" -g $rg \
    --template-file deploy.json \
    --parameters \
    clusterId=$clusterId \
    db=$db

