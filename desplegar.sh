#!/bin/bash
echo "Construyendo la imagen Docker..."
sudo docker build -t web_examen .

echo "Levantando el contenedor y exponiendo el puerto 8888..."
sudo docker run -d -p 8888:8000 --name contenedor_examen web_examen

echo "Verificando el estado del contenedor:"
sudo docker ps
