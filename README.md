# Isolate build node containers

![Docker Image](https://github.com/DanielRondonGarcia/Build-node/actions/workflows/docker.yml/badge.svg)

```cli
docker build -t ghcr.io/danielrondongarcia/build-node .
```

Now, run the following command to create and run a container based on this image, mapping the /build folder of the container to the current host folder:

```cli
docker run --rm -it -v ${pwd}:/build ghcr.io/danielrondongarcia/build-node:latest node -v
```

```cli
docker run --rm -it -v ${pwd}:/build ghcr.io/danielrondongarcia/build-node:latest npm install
```

```cli
docker attach $(docker ps -l -q)
```

For Next js

```cli
docker run --rm -it -v ${pwd}:/build ghcr.io/danielrondongarcia/build-node:latest npx create-next-app nextjs-typescript-starter --example "https://github.com/vercel/nextjs-postgres-auth-starter"
```
