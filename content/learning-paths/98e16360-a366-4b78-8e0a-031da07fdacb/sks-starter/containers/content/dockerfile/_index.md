---
id: "Dockerfile"
description: ""
title: "Dockerfile"
weight: 6
tags: [docker, containers]
level: [intermediate]
categories: [exoscale,kubernetes]
---


### Dockerfile

```yaml
FROM node:12-alpine * to be based on which other Docker image?

RUN apk add --no-cache python g++ make * install additional software

WORKDIR /app * create and use directory /app inside the container

COPY . . * 1st parameter: local directory (./ is the directory where the Dockerfile is) * 2nd parameter: target directory inside the container * → copy everything where the Dockerfile is in, into the container under /app

RUN npm install * dependencies for the application

CMD ["node", "src/index.js"] * run the app - just like when running outside a container
```
#### Dockerfile Theory
{{< card 
title="Video: Dockerfile Theory">}}
<video width="100%" height="100%" controls>
    <source src="https://sos-de-fra-1.exo.io/exoscale-academy/videos/sks_starter_vid5.mp4?1752342254038" type="video/mp4">
    Your browser does not support the video tag.
</video>
{{< /card >}}


#### Dockerfile Practice
{{< card 
title="Video: Dockerfile Practice">}}
<video width="100%" height="100%" controls>
    <source src="https://sos-de-fra-1.exo.io/exoscale-academy/videos/sks_starter_vid6.mp4?1752342254053" type="video/mp4">
    Your browser does not support the video tag.
</video>
{{< /card >}}