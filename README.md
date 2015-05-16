[![logo](https://raw.githubusercontent.com/pascalgrimaud/docker-jenkins/master/jenkins_96x96.png)]
(https://jenkins-ci.org/)

[![Circle CI](https://circleci.com/gh/pascalgrimaud/docker-jenkins.svg?style=svg)]
(https://circleci.com/gh/pascalgrimaud/docker-jenkins)


# Information

The base docker image :

  * [pascalgrimaud/ubuntu](https://registry.hub.docker.com/u/pascalgrimaud/ubuntu/)

The GitHub project :

  * [pascalgrimaud/docker-ubuntu](https://github.com/pascalgrimaud/docker-jenkins/)


What are installed in this container :

  * oracle-java8
  * git
  * subversion
  * ant 1.9.4
  * maven 3.3.3


# Installation

You can clone this project and build with docker command :

```
git clone https://github.com/pascalgrimaud/docker-jenkins.git
cd docker-jenkins
docker build -t pascalgrimaud/jenkins .
```

You can build directly from the [GitHub project](https://github.com/pascalgrimaud/docker-jenkins/) :

```
docker build -t pascalgrimaud/jenkins github.com/pascalgrimaud/docker-jenkins.git
```


# Usage

Quick start with binding to port 8080 :

```
docker run -d -p 8080:8080 pascalgrimaud/jenkins
```


# Usage with volumes

Start and mount a volume for all jenkins config at ~/volumes/jenkins/jenkins_home :

```
docker run -d -v ~/volumes/jenkins/jenkins_home:/opt/jenkins/jenkins_home \
-p 8080:8080 pascalgrimaud/jenkins
```


# Maven and settings.xml

The `settings.xml` is added to the container at the path `/root/.m2/settings.xml`

You can modify this file if you are behind a proxy for example.
I don't want the `.m2` to be inside the container, so I put in `settings.xml` :   

```
<localRepository>/opt/jenkins/jenkins_home/.m2</localRepository>
```
 