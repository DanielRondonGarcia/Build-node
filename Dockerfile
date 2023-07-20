# Imagen base para usar
FROM node:latest

# Configurando el directorio de trabajo
WORKDIR /build

# Change ownership of work directory
RUN chown -R node:node /build

# Change to non-root privilege
USER node

# Install pnpm globally
RUN npm install -g pnpm --unsafe-perm

# Add global node_modules to PATH
ENV PATH /build/node_modules/.bin:$PATH
