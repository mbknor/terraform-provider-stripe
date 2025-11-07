#!/usr/bin/env bash

goreleaser release --clean --skip=publish
pushd dist
gpg --detach-sign terraform-provider-stripe_1.0.0_SHA256SUMS
popd