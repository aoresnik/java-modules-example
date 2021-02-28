#! /bin/bash

# Exit if any command fails
set -e

rm -rf out-standalone

jlink --launcher modules-example=xyz.aoresnik.exercise.modules.main_noauto \
    --module-path out-jar/modules \
    --add-modules xyz.aoresnik.exercise.modules.main_noauto \
    --bind-services \
    --strip-debug --no-header-files --no-man-pages \
    --output out-standalone

# Needed on JDK before 13 to achieve standalone distribution with reduced size
# (see https://stackoverflow.com/questions/58045819/custom-jre-produced-by-jlink-has-a-large-size-for-a-minimal-jre)
strip out-standalone/lib/server/libjvm.so
