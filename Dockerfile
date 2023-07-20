# Imagen base para usar
FROM node:latest

# Importantly set user to root
USER root

# Configurando el directorio de trabajo
WORKDIR /build

# Change ownership of work directory
RUN chown -R node:node /build

# Install pnpm globally
RUN npm install -g pnpm --unsafe-perm

# Set back to node user
USER node

# Add global node_modules to PATH
ENV PATH /build/node_modules/.bin:$PATH
