#!/bin/bash

##########################################################################
##  Deploys sample solution
##
##  Parameters:
##
##  1- Name of resource group
##  2- Kusto cluster ID

rg=$1
clusterId=$2

echo "Resource group:  $rg"

echo
echo "Deploying ARM template"

az group deployment create -n "deploy-$(uuidgen)" -g $rg \
    --template-file deploy.json \
    --parameters \
    clusterId=$clusterId
