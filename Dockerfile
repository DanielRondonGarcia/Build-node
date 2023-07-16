# Imagen base para usar
FROM node:latest

# Configurando el directorio de trabajo
WORKDIR /build

# Configura node como punto de entrada
#ENTRYPOINT ["node"]
#ENTRYPOINT ["/bin/bash"]