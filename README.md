# zimbra
Zimbra docker image

1. Run ./docker-build.sh
2. Run ./docker-run.sh
3. Edit /etc/hosts file in container to show: (dummy ip: 192.168.0.1)

````
192.168.0.1   mail.hectormedina   mail
````
4. Run ./install.sh
5. Once finished, create an image from this container.
6. Run deploy a container based on this image. 


Fallos conocidos
- Es posible que no se puedan enviar mensajes salientes, esto es porque necesitamos autorizar a qué servidores podemos enviar correos, normalmente está habilitado para la LAN. Hay que utilizar esto para corregirlo: https://wiki.zimbra.com/wiki/ZimbraMtaMyNetworks Idealmente se tiene que usar un server relay de OVH o donde tengamos el dominio, porque sino no se aceptarán los mensajes por tener origen una IP no confiable.
