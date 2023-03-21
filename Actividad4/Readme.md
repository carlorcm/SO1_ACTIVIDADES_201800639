# Instalación del Servicio

- Guardar el archivo con un nombre descriptivo y la extensión `.service`
-  Copiar el archivo a la carpeta `/etc/systemd/system` utilizando el comando:
```
sudo cp saludo.service /etc/systemd/system/
```
- Recargar la configuración de systemd con el comando:
```
sudo systemctl daemon-reload
```
- Iniciar el servicio con el comando:
```
sudo systemctl start saludo.service
```
- Verificar el estado del servicio con el comando:
```
sudo systemctl status saludo.service
```
- Para que el servicio se ejecute automáticamente al arrancar el sistema:
```
sudo systemctl enable saludo.service
```
