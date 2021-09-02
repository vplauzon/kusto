#!/bin/bash

##########################################################################
##  Deploys ARM Template
##
##  Parameters:
##
##  1- Name of resource group
##  2- scriptUrl
##  3- scriptUrlSasToken

rg=$1
scriptUrl=$2
scriptUrlSasToken=$3

echo "Resource group:  $rg"
echo "scriptUrl:  $scriptUrl"
echo "scriptUrlSasToken:  $scriptUrlSasToken"
echo "Current directory:  $(pwd)"

echo
echo "Deploying ARM template"

az deployment group create -n "deploy-$(uuidgen)" -g $rg \
    --template-file scripts-deploy.json \
    --parameters scriptUrl=$scriptUrl scriptUrlSasToken=$scriptUrlSasToken
