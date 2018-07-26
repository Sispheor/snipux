# Netcat

## Server

Listen on TCP port (keep server alive)

    nc -l -k 2389

Listen on UDP

    nc -4 -u -l 2389


## Client

Connect to TCP port

    nc localhost 2389

Connect to UDP

    nc -4 -u localhost 2389
