#! /bin/bash

# Exit if any command fails
set -e

CP=""
CP_SEP=""
for JAR in `find out-jar/classpath -name "*.jar"`; do
        CP=${CP}${CP_SEP}${JAR}
        CP_SEP=":"
done

java --module-path out-jar/modules -classpath $CP --module xyz.aoresnik.exercise.modules.main
