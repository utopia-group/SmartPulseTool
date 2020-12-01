#!/bin/bash
SCRIPT_DIR="$(cd "$( dirname "$0" )" && pwd)"
$JAVA_HOME/bin/java -Xmx16g -Xms1g -jar "${SCRIPT_DIR}/plugins/org.eclipse.equinox.launcher_1.3.100.v20150511-1540.jar" -tc "${SCRIPT_DIR}/SmartPulse.xml" -s "${SCRIPT_DIR}/settings.epf" -i $@
