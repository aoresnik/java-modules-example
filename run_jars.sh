#! /bin/bash

# Exit if any command fails
set -e

java --module-path out-jar --module xyz.aoresnik.exercise.modules.main
