#!/usr/bin/env bash

goreleaser release --clean --skip=publish
pushd dist
gpg --detach-sign --armor terraform-provider-stripe_1.0.0_SHA256SUMS
mv terraform-provider-stripe_1.0.0_SHA256SUMS.asc terraform-provider-stripe_1.0.0_SHA256SUMS.sig
popd