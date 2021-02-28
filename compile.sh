#! /bin/bash

# Exit if any command fails
set -e

mkdir -p out

# Service modules need to be compiled explicitly (compiling module1 doesn't compile them automatically)
#javac -d out --module-source-path src/main/java -m xyz.aoresnik.exercise.modules.serviceintf
javac -d out --module-source-path src/main/java -m xyz.aoresnik.exercise.modules.serviceimpl_a
javac -d out --module-source-path src/main/java -m xyz.aoresnik.exercise.modules.serviceimpl_b

# module_b and module_c don't need to be compiled explicitly - compiling module1 automatically compiles these two
#javac -d out --module-source-path src/main/java -m xyz.aoresnik.exercise.modules.module_c
#javac -d out --module-source-path src/main/java -m xyz.aoresnik.exercise.modules.module_b

# Open module must be compiled explicitly -
javac -d out --module-source-path src/main/java -m xyz.aoresnik.exercise.modules.openmodule

# Unnamed module (i.e. classes on regular CLASSPATH) must of course be compiled explicitly
mkdir -p out/unnamed-module
javac -d out/unnamed-module \
    --source-path src/main/java/unnamed-module \
    src/main/java/unnamed-module/xyz/aoresnik/exercise/modules/unnamedmodule/UnnamedModuleHello.java

# Automatic module is a regular .jar and must be compiled as such - compiling is not supported by --module-source-path and -m
mkdir -p out/xyz.aoresnik.exercise.modules.automaticmodule
javac -d out/xyz.aoresnik.exercise.modules.automaticmodule \
    -classpath out/unnamed-module \
    -sourcepath src/main/java/xyz.aoresnik.exercise.modules.automaticmodule1 \
    src/main/java/xyz.aoresnik.exercise.modules.automaticmodule/xyz/aoresnik/exercise/modules/automaticmodule/AutomaticModuleHello.java
# required to build xyz.aoresnik.exercise.modules.main
jar -c --file=out/xyz.aoresnik.exercise.modules.automaticmodule.jar -C out/xyz.aoresnik.exercise.modules.automaticmodule .

# ""--module-path out" is needed to support the automatic module
javac -d out --module-source-path src/main/java --module-path out -m xyz.aoresnik.exercise.modules.main

javac -d out --module-source-path src/main/java --module-path out -m xyz.aoresnik.exercise.modules.main_noauto
