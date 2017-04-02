FROM ubuntu:16.04
MAINTAINER cli99@illinois.edu

RUN apt-get update 

# install git, java
RUN apt-get install -y --no-install-recommends git default-jdk

# install maven
RUN apt-get install -y --no-install-recommends maven

# clone cermine repo and build cermine-impl-<VERSION>-jar-with-dependencies.jar in cermine-impl/target
RUN git clone --recursive https://github.com/CeON/CERMINE.git && \
cd CERMINE/cermine-impl && mvn compile assembly:single

WORKDIR ${HOME}/CERMINE/cermine-impl/target

# Setup the entrypoint
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
