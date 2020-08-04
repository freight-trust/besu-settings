#!/bin/bash
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
wget https://www.azul.com/files/jHiccup-2.0.10-dist.zip
unzip 
wget https://dl.bintray.com/hyperledger-org/besu-repo/besu-1.5.0.tar.gz

tar xzvf besu-1.5.0.tar.gz
cd besu-1.5.0
mkdir -p -v node/keys
cd node
wget https://gist.githubusercontent.com/sambacha/4e43617ffbb7a5b6639e21a31928c639/raw/3471c241bc50c07450d814e34dba1d16e95a612d/genesis.json


export _JAVA_OPTIONS="$_JAVA_OPTIONS -javaagent:jHiccup-2.1.0/jHiccup.jar=\"-l hiccup.log -d 0 -i 1000\""
# tail -f hiccup.log | jhiccup_exporter

bin/besu --genesis

--pid-path=
--genesis-file=genesis.json