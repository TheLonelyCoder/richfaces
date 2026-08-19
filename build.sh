#!/bin/bash
set -e

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH="$JAVA_HOME/bin:$PATH"

mvn clean install
# if cache has to be cleared
# mvn -s ~/richfaces-settings.xml -U clean install
