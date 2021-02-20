#! /bin/bash

# Exit if any command fails
set -e

./compile.sh
./package_jars.sh
./package_standalone.sh

echo "Running from classes (without automatic module, since a directory with .class files is not recognized as automatic module):"
echo "================"
echo ""
./run_classes.sh
echo ""

echo "Running from jars (with automatic module):"
echo "================"
echo ""
./run_jars.sh
echo ""

echo "Running from standalone jlink-ed distribution (without automatic module, since automatic modules are not supported by jlink):"
echo "================"
echo ""
./run_standalone.sh
echo ""
