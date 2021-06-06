#!/bin/bash
SCRIPT_DIR="$(cd "$( dirname "$0" )" && pwd)"
JAVA="java"
if [ `uname -o` = "Cygwin" ]; then
    SCRIPT_DIR=$(cygpath -w ${SCRIPT_DIR})
fi

${JAVA} -Xmx8g -Xms512M -jar "${SCRIPT_DIR}/plugins/org.eclipse.equinox.launcher_1.3.100.v20150511-1540.jar" -tc "${SCRIPT_DIR}/SmartPulse.xml" -s "${SCRIPT_DIR}/settings.epf" -i $@
