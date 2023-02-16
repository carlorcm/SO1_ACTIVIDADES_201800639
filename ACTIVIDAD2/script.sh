# Obtenemos la fecha del día de ejecución del script en el formato YYYY-MM-DD
fecha=$(date +"%Y-%m-%d")

# Creamos el directorio temporal para el archivo de registro
mkdir -p /tmp/$fecha

# Pedimos al usuario que introduzca el nombre de usuario de GitHub
echo "Introduce el nombre de usuario de GitHub:"
read username

# Construimos la URL usando la variable "username"
url="https://api.github.com/users/$username"

# Consultamos la URL con el comando "curl" y guardamos la respuesta en un archivo temporal
curl $url > respuesta.json

# Extraemos los valores del JSON usando el comando "jq" y los guardamos en variables
github_user=$(cat respuesta.json | jq -r '.login')
id=$(cat respuesta.json | jq -r '.id')
created_at=$(cat respuesta.json | jq -r '.created_at')

# Construimos el mensaje con los valores extraídos del JSON
mensaje="Hola $github_user. User ID: $id. Cuenta fue creada el: $created_at."

# Escribimos el mensaje en el archivo de registro
echo $mensaje >> /tmp/$fecha/saludos.log

# Mostramos el mensaje por pantalla
echo $mensaje
