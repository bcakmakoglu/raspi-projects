# Raspberry-Pi applications

Mostly docker-compose files for my raspberrypi

 - [IoBroker](https://www.iobroker.net/#de/documentation) 
 - [MagicMirror](https://docs.magicmirror.builders/)
 - [N8n](https://docs.n8n.io/)
 - [Nginx Proxy Manager](https://nginxproxymanager.com/guide/)
 - [Pi-Hole](https://pi-hole.net/)
 - [Portainer](https://documentation.portainer.io/)
 - [Deconz](https://github.com/marthoc/docker-deconz)

## Port-Bindings
### IoBroker
    ports:
      - 8089:8089 # web server
      - 8081:8081 # ioBroker GUI
      - 1883:1883 # mqtt broker/client
      - 1884:1884 # node-red
      - 1885:1885 # socket-io

### Deconz
    ports:
      - 5080:80 # GUI port
      - 5443:443 # WS port 

### MagicMirror
    ports:
      - 8888:8080

### N8n
    ports:
      - 5678:5678

### Nginx Proxy Manager
    ports:
      - 80:80 # HTTP Traffic
      - 81:81 # Dashboard Port
      - 443:443 # HTTPS Traffic

### Pi-Hole
    ports:
      - 8082:8082/tcp
      - 53:53/tcp
      - 53:53/udp

### Portainer
    ports:
      - 8999:9000


## Nginx Proxy Manager
To use the NPM (Nginx Proxy Manager) reverse proxy do this:

1. Go to your Pi-Hole settings and add a new DNS Entry for the domain you want to use
   i.e. deconz.pi
2. Set the associated IP-address to the address of your raspberrypi (or whatever you're using)
   i.e. 192.168.170.20.
3. Afterwards go to your NPM UI and add a new proxy host using the domain you chose and
   point it to the associated IP-address __and__ the port i.e. 5080.

