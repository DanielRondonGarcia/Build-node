# Imagen base para usar
FROM node:latest

# Configurando el directorio de trabajo
WORKDIR /build

# Install pnpm globally
RUN npm install -g pnpm

# Add global node_modules to PATH
ENV PATH /app/node_modules/.bin:$PATH
