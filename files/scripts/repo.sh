#!/usr/bin/env bash
set -oue pipefail

# create pennbauman/ports repo (lf)
tee /etc/yum.repos.d/_copr\:copr.fedorainfracloud.org\:pennbauman\:ports.repo <<EOF
[copr:copr.fedorainfracloud.org:pennbauman:ports]
name=Copr repo for ports owned by pennbauman
baseurl=https://download.copr.fedorainfracloud.org/results/pennbauman/ports/fedora-\$releasever-\$basearch/
type=rpm-md
skip_if_unavailable=True
gpgcheck=1
gpgkey=https://download.copr.fedorainfracloud.org/results/pennbauman/ports/pubkey.gpg
repo_gpgcheck=0
enabled=1
enabled_metadata=1
EOF
