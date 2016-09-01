#!/usr/bin/env bash
if [ "$TRAVIS_BRANCH" = 'master' ] && [ "$TRAVIS_PULL_REQUEST" == 'false' ]; then
    mvn release:prepare -B --settings cd/mvnsettings.xml
    mvn release:perform --settings cd/mvnsettings.xml
fi