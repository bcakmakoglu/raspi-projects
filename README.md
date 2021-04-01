# Raspberry-Pi applications

Mostly docker-compose files for my raspberrypi

 - [IoBroker](https://www.iobroker.net/#de/documentation) 
 - [MagicMirror](https://docs.magicmirror.builders/)
 - [N8n](https://docs.n8n.io/)
 - [Nginx Proxy Manager](https://nginxproxymanager.com/guide/)
 - [PiHole](https://pi-hole.net/)
 - [Portainer](https://documentation.portainer.io/)
 - [Deconz](https://github.com/marthoc/docker-deconz)



## Nginx Proxy Manager
To use the NPM (Nginx Proxy Manager) reverse proxy do this:

1. Go to your Pi-Hole settings and add a new DNS Entry for the domain you want to use 
i.e. deconz.pi
2. Set the associated IP-address to the address of your raspberrypi (or whatever you're using)
i.e. 192.168.170.20.
3. Afterwards go to your NPM UI and add a new proxy host using the domain you chose and
point it to the associated IP-address __and__ the port i.e. 5080.
