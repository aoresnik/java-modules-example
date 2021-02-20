#! /bin/bash

# Exit if any command fails
set -e

mkdir -p out-jar
jar -c --file=out-jar/xyz.aoresnik.exercise.modules.serviceintf.jar -C out/xyz.aoresnik.exercise.modules.serviceintf .
jar -c --file=out-jar/xyz.aoresnik.exercise.modules.serviceimpl_a.jar -C out/xyz.aoresnik.exercise.modules.serviceimpl_a .
jar -c --file=out-jar/xyz.aoresnik.exercise.modules.serviceimpl_b.jar -C out/xyz.aoresnik.exercise.modules.serviceimpl_b .
jar -c --file=out-jar/xyz.aoresnik.exercise.modules.openmodule.jar -C out/xyz.aoresnik.exercise.modules.openmodule .
jar -c --file=out-jar/xyz.aoresnik.exercise.modules.automaticmodule.jar -C out/xyz.aoresnik.exercise.modules.automaticmodule .
jar -c --file=out-jar/xyz.aoresnik.exercise.modules.module_c.jar -C out/xyz.aoresnik.exercise.modules.module_c .
jar -c --file=out-jar/xyz.aoresnik.exercise.modules.module_b.jar -C out/xyz.aoresnik.exercise.modules.module_b .
jar -c --file=out-jar/xyz.aoresnik.exercise.modules.main.jar --main-class=xyz.aoresnik.exercise.modules.main.MainHello -C out/xyz.aoresnik.exercise.modules.main .
jar -c --file=out-jar/xyz.aoresnik.exercise.modules.main_noauto.jar --main-class=xyz.aoresnik.exercise.modules.main.MainHello -C out/xyz.aoresnik.exercise.modules.main_noauto .
