#!/bin/bash

##########################################################################
##  Deploys sample solution
##
##  Takes 1 parameter:
##
##  1- Name of resource group

rg=$1

echo "Resource group:  $rg"

echo
echo "Deploying ARM template"

az group deployment create -n "deploy-$(uuidgen)" -g $rg \
    --template-file deploy.json

