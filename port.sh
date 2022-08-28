#!/bin/bash

echo -e ''
echo -e "\033[31m\033[0m"
echo ' ██████╗ ██╗      █████╗  ██████╗██╗  ██╗ ██████╗ ██╗    ██╗██╗'     
echo ' ██╔══██╗██║     ██╔══██╗██╔════╝██║ ██╔╝██╔═══██╗██║    ██║██║'
echo ' ██████╔╝██║     ███████║██║     █████╔╝ ██║   ██║██║ █╗ ██║██║'    
echo ' ██╔══██╗██║     ██╔══██║██║     ██╔═██╗ ██║   ██║██║███╗██║██║'
echo ' ██████╔╝███████╗██║  ██║╚██████╗██║  ██╗╚██████╔╝╚███╔███╔╝███████╗'
echo ' ╚═════╝ ╚══════╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝ ╚═════╝  ╚══╝╚══╝ ╚══════╝'
echo -e '\e[0m'
echo ''

GREEN="\e[31m"
NC="\e[0m"
BINARY=$(uname -m)

#!/bin/bash

sleep 2

echo "Proje Adını Yazın: "
read PROJE
echo "Prox_App Port(Default- 26658) :"
read PROXY
echo "Laddr_Port(Default-26657) :"
read LADDR
echo "Proof_Laddr Port(Default-6060) :"
read PROOF
echo  "Laddr2 Port(26656):"
read LADDR2
echo "Prometheus Port (Defaul-26660 ):"
read PROM
DATA=("."$PROJE)
echo "App.toml Port 1 (Default-9090):"
read APP1
echo "App.Toml Port 2 (Default-9091):"
read APP2
echo "Node Port(Default-26657):"
read NODE
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:$PROXY\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:$LADDR\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:$PROOF\"%; s%^laddr = \"tcp://0.0.0.0:26656\"%laddr = \"tcp://0.0.0.0:$LADDR2\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":$PROM\"%" $HOME/$DATA/config/config.toml

sed -i.bak -e "s%^address = \"0.0.0.0:9090\"%address = \"0.0.0.0:$APP1\"%; s%^address = \"0.0.0.0:9091\"%address = \"0.0.0.0:$APP2\"%" $HOME/$DATA/config/app.toml

sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhost:$NODE\"%" $HOME/$DATA/config/client.toml

systemctl restart $PROJE"d"

echo " "

echo "--------------------------------"
echo "Tebrikler, İşlem Başarıyla Tamamlandı..."
echo "--------------------------------"
sleep 2
