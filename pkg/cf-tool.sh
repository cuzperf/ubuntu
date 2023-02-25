#!/bin/bash
cd /tmp
curl -s -S -LO https://github.com/cuzperf/cf-tool/releases/download/v1.0.7/cf_v1.0.7_linux_64.zip && unzip cf_v1.0.7_linux_64.zip && sudo mv cf /usr/local/bin/
cd -

# run cf config in ~/cuzperf/cf
