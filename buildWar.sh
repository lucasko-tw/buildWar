#!/bin/bash

cd /tmp

echo "We are at $PWD"

MODE="test"

if [[ $MODE == "test" ]] ; then
 echo "test mode, loading test.properties"
 cp -f $PROJECT/$PROJECT/src/main/webapp/WEB-INF/test.properties $PROJECT/$PROJECT/src/main/webapp/WEB-INF/config.properties

fi

cat  $PROJECT/$PROJECT/src/main/webapp/WEB-INF/config.properties

mvn compile -f $PROJECT/$PROJECT

mvn package -f $PROJECT/$PROJECT

ls -l

rm -rf webapps

mkdir webapps

cp $PROJECT/$PROJECT/target/$PROJECT-1.0.0.war webapps/ROOT.war

ls -l webapps/



