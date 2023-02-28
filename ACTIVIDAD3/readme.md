# Configuración de nginx para visualizar frontend de la aplicacion.

En el archivo nginx.Dockerfile luego de instalar la imagen de nginx a utilizar 

```
# Eliminamos la configuración por defecto de Nginx
RUN rm -rf /usr/share/nginx/html/*
```
```
# Copiamos el archivo de configuración personalizado de Nginx
COPY nginx.conf /etc/nginx/nginx.conf
```