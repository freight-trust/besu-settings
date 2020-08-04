JAVA_OPTIONS="$_JAVA_OPTIONS -javaagent:jHiccup-2.1.0/jHiccup.jar=\"-l hiccup.log -d 0 -i 1000\"" bin/besu --genesis-file=genesis.json --bootnodes=enode://51729f1b4186db1701e13d9e71b7b4f0a35e0cc1f480c904c5e758b5b76936685dccde490c623a79f6c6c5d1dfd3eae37d35101e1a9a2d06536074562dd77604@18.216.213.235:30303 --logging=ALL --rpc-http-api=ETH,NET,WEB3,ADMIN,TRACE

 bin/besu --genesis-file=genesis.json --bootnodes=enode://51729f1b4186db1701e13d9e71b7b4f0a35e0cc1f480c904c5e758b5b76936685dccde490c623a79f6c6c5d1dfd3eae37d35101e1a9a2d06536074562dd77604@18.216.213.235:30303 --logging=ALL --rpc-http-api=ETH,NET,WEB3,ADMIN,TRACE

 