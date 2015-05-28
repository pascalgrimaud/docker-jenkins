#!/bin/bash

echo "Starting container : Jenkins ${JENKINS_VERSION}"

# display info
echo "######################################################################"
echo "You can now connect to this Jenkins Server and config it with :"
echo ""
echo "JENKINS_HOME : ${JENKINS_HOME}"
echo "JAVA 8       : /opt/java8"
echo "ANT 1.9.4    : /opt/ant"
echo "MAVEN 3.3.3  : /opt/maven"
echo ""
echo "######################################################################"

# start Jenkins
exec java -jar /opt/jenkins/jenkins.war
