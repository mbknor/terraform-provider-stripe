#!/usr/bin/env bash


go get ./...
GOOS=darwin GOARCH=arm64 go build -o out/terraform-provider-stripe_1.0.0_darwin_arm64
GOOS=linux GOARCH=amd64 go build -o out/terraform-provider-stripe_1.0.0_linux_amd64
echo "Upload these files to github release using tag/version 'v1.0.0' - it is important that it is starting with 'v'"

#make compile

#mkdir -p ~/.terraform.d/plugins/local/v2/stripe/1.0.0/darwin_arm64/
#
#dest="~/.terraform.d/plugins/local/v2/stripe/1.0.0/darwin_arm64/terraform-provider-stripe_v1.0.0"
#cp terraform-provider-stripe ~/.terraform.d/plugins/local/v2/stripe/1.0.0/darwin_arm64/terraform-provider-stripe_v1.0.0
#echo "File written to: ~/.terraform.d/plugins/local/v2/stripe/1.0.0/darwin_arm64/terraform-provider-stripe_v1.0.0"