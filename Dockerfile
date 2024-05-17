# Usa una imagen base de Node.js para construir y servir la aplicación Angular
FROM node:alpine

# Establece el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copia el archivo package.json y package-lock.json al contenedor
COPY . /usr/src/app

RUN npm install -g @angular/cli

# Instala las dependencias de la aplicación
RUN npm install

CMD ["ng", "serve", "--host", "0.0.0.0"]
