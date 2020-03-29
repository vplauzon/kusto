#!/bin/bash

##########################################################################
##  Deploys sample solution
##
##  Parameters:
##
##  1- Name of resource group
##  1- Kusto cluster URI

rg=$1
clusterUri=$2

echo "Resource group:  $rg"

echo
echo "Deploying ARM template"

az group deployment create -n "deploy-$(uuidgen)" -g $rg \
    --template-file deploy.json \
    --parameters \
    kustoUri=$clusterUri

