RobotSexNickels
================================

A crypto-currency.

    listen=1
    server=1
    daemon=1
    GEN=0
    rpcuser=user
    rpcpassword=pass
    maxconnections=100
    rpcconnect=127.0.0.1
    rpcallowip=*
    rpcport=5555

Note: Building requires libevent. On Ubuntu, install package [code]libevent-dev[/code]

Quick Ubuntu build instructions:

    sudo apt-get install ntp git build-essential libssl-dev libdb-dev libdb++-dev libboost-all-dev libqrencode-dev libminiupnpc-dev libevent-dev
    git clone https://github.com/robotsexnickels/robotsexnickels.git
    cd robotsexnickels/src
    make -f makefile.unix
    strip robotsexnickelsd
    sudo mv robotsexnickelsd /usr/bin
