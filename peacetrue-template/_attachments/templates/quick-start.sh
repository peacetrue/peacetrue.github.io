#!/bin/bash

#mkdir quick-start && cd quick-start || exit
#ln -s ../template-engine.jar template-engine.jar
#ln -s ../antora-variable.adoc antora-variable.adoc
#ln -s ../antora antora
#ln -s ../antora-options.properties antora-options.properties
#ln -s ../antora-variables.properties antora-variables.properties
#cd ..
#zip -rq quick-start.zip quick-start

rm -rf quick-start.zip
zip -rq quick-start.zip quick-start
