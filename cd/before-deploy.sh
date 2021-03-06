#!/usr/bin/env bash
if [ "$TRAVIS_BRANCH" = 'master' -o ! -z "$TRAVIS_TAG" ] && [ "$TRAVIS_PULL_REQUEST" == 'false' ]; then
   openssl aes-256-cbc -K $encrypted_3972bcfa484f_key -iv $encrypted_3972bcfa484f_iv -in cd/codesigning.asc.enc -out cd/codesigning.asc -d
   gpg --fast-import cd/codesigning.asc
fi