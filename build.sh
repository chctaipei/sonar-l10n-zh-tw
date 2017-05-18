#!/bin/bash

export SQ_HOME="/var/local/sonarqube"

echo "build package"
mvn package

echo "copy package to plugins dir"
cp -v target/sonar-l10n-zh_tw-plugin-1.16-YAHAHA.jar $SQ_HOME/extensions/plugins/

echo "please restart sonarqube manually"
echo "sudo $SQ_HOME/bin/linux-x86-64/sonar.sh restart"
