#!/bin/bash
set -e

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH="$JAVA_HOME/bin:$PATH"

# ### Standard build (use your own "settings.xml")
mvn -s ~/richfaces-settings.xml clean install

# ### if cache has to be cleared
# mvn -s ~/richfaces-settings.xml -U clean install

# ### Smoke test - failes because of old test infrastructure
# mvn clean install -Dintegration=wildfly81 -Dsmoke