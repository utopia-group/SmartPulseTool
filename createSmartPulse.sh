#!/bin/bash

SCRIPT_DIR="$(cd "$( dirname "$0" )" && pwd)"

if [[ -z "$JAVA_HOME" ]] ; then
    echo "JAVA_HOME is not set"
    exit 1
fi

if [[ -e SmartPulse ]] ; then
    rm -rf SmartPulse
fi

mkdir SmartPulse

cp "$SCRIPT_DIR/settings/svcomp-LTL-64bit-Automizer_Default.epf" "SmartPulse/settings.epf"
cp "$SCRIPT_DIR/toolchains/AutomizerLTLSpec.xml" "SmartPulse/SmartPulse.xml"

cd "$SCRIPT_DIR/trunk/source/BA_MavenParentUltimate/"
mvn -e -T 1C clean install -Pmaterialize 
cd -

cp -r "$SCRIPT_DIR/trunk/source/BA_SiteRepository/target/products/CLI-E4/linux/gtk/x86_64/" "SmartPulse/"
cp ltl2ba SmartPulse
cp SmartPulse.py SmartPulse
cp SmartPulse.sh SmartPulse
