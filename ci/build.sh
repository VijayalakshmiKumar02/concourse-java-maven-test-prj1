#!/usr/bin/env bash

set -e -x

git clone concourse-java-maven-test-prj1 resource-app
echo "creating file"
cd resource-app
echo "created the file"
mvn clean 
echo " done compiling"
mvn compile
mvn install
echo "done installing"
mvn  package exec:java de/bitkings/nitram509/ConcourseJavaMavenTestPrjApplication
mvn package 
echo "done running"
