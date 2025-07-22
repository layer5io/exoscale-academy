---
id: "Sample Application"
description: ""
title: "Sample Application"
weight: 2
tags: [docker, containers]
categories: [intermediate]
---




### Sample Application using Node.js

This sample app demonstration shows how traditional software deployment looks. A little JavaScript spins up a web server and runs the sample app on the server. It demonstrates how easy it is to run web-based applications, but still, you need to install and run Node.js beforehand. In addition, you have to use the proper versions of the software components in place and take care of all dependencies (runtime environments, libraries, ...). Otherwise, the app will not run or will not run properly.

This is the source code of our sample app:

```javascript
const express = require("express")
const app = express()
const port = 3000
app.get('/', (req, res) => { res.send("Hello World!") })
app.listen(port, () => {
  console.log("Example app listening at http://localhost:3000")
})
```
Take the code into action:

```bash
node app.js
```

The application at work, displaying Hello World!:

![nodejs-app](nodejs-app.png)

