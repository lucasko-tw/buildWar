#!/bin/bash

cd /tmp

echo "We are at $PWD"

MODE="test"

if [[ $MODE == "test" ]] ; then
 echo "test mode, loading test.properties"
 cp -f $PROJECT/src/main/webapp/WEB-INF/test.properties $PROJECT/src/main/webapp/WEB-INF/config.properties

fi

cat  $PROJECT/src/main/webapp/WEB-INF/config.properties

mvn compile -f $PROJECT

mvn package -f $PROJECT

ls -l

rm -rf webapps

mkdir webapps

cp $PROJECT/target/$PROJECT-1.0.0.war webapps/ROOT.war

ls -l webapps/



