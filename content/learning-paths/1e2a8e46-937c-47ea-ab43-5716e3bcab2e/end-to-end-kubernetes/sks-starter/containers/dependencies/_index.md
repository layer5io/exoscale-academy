---
type: "page"
id: "Dependencies"
description: ""
title: "Dealing with Dependencies"
weight: 4
---

### Installing Dependencies ...
... on Ubuntu

```bash
# Install repository
$ curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash –sudo apt-get update
# Install NodeJS
$ sudo apt-get install -y nodejs
# Install Dependencies of the app
$ npm install
```
### Running ...
... the application

```bash
# Download or Upload app.js to the server somehow…
# Run
$ node app.js
```

#### Dependencies

{{< card 
title="Video: Dependencies">}}
<video width="100%" height="100%" controls>
    <source src="https://sos-de-fra-1.exo.io/exoscale-academy/videos/sks_starter_vid3.mp4?1752341753956" type="video/mp4">
    Your browser does not support the video tag.
</video>
{{< /card >}}