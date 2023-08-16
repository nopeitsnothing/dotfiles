#!/bin/sh

gpg --batch --use-agent --decrypt ssh.conf.gpg > ~/.ssh/config
gpg --batch --use-agent --decrypt vault.gpg > ~/.vault
gpg --batch --use-agent --decrypt gpg.conf.gpg > ~/.gnupg/gpg.conf
gpg --batch --use-agent --decrypt hosts.gpg > ~/hosts
