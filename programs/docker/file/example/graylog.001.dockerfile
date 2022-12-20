FROM ubuntu:latest

RUN \
  sudo apt-get update && \
  sudo apt-get upgrade \
  sudo apt-get install \
    apt-transport-https \
    openjdk-8-jre-headless \
    uuid-runtime \
    pwgen


# adding verification information for mongo.db repo to apt
# get info about contents of the repo
# install mongodb-org
RUN \
  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4 \
  echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list \
  sudo apt-get update \
  sudo apt-get install -y mongodb-org

# set to start mongod on system startup, start mongod and verify mongod's status
RUN \
  sudo systemctl daemon-reload \
  sudo systemctl enable mongod.service \
  sudo systemctl restart mongod.service \
  sudo systemctl --type=service --state=active | grep mongod

# install graylog
RUN \
  wget https://packages.graylog2.org/repo/packages/graylog-4.3-repository_latest.deb \
  sudo dpkg -i graylog-4.3-repository_latest.deb \
  sudo apt-get update && \
  sudo apt-get install \
    graylog-server #\
    # graylog-enterprise-plugins \
    # graylog-integrations-plugins \
    # graylog-enterprise-integrations-plugins

# to be done interactively
# echo -n "Enter Password: " && head -1 </dev/stdin | tr -d '\n' | sha256sum | cut -d" " -f1

CMD [/bin/bash]