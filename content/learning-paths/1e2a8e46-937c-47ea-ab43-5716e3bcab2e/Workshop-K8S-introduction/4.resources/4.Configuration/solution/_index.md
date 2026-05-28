---
title: Solution
weight: 3
aliases:
  - /learning-paths/1e2a8e46-937c-47ea-ab43-5716e3bcab2e/end-to-end-kubernetes/kubernetes-workshop/workshop/main-resources/content/configuration/content/practice/
---

1. The password we want to store in the Secret is *dbpass*.

First, we encode this password in base64:

``` bash
$ echo -n "dbpass" | base64
ZGJwYXNz
```

Next, we create the following file defining a Secret:

``` yaml
apiVersion: v1
kind: Secret
metadata:
  name: db
data:
  password: ZGJwYXNz
```

2. We modify the *db* Deployment specification to reference the contents of the Secret key *password* instead of using the password in plain text:

``` yaml {filename="deploy-db.yaml"}
apiVersion: apps/v1
kind: Deployment
metadata:
  labels:
    app: db
  name: db
spec:
  replicas: 1
  selector:
    matchLabels:
      app: db
  template:
    metadata:
      labels:
        app: db
    spec:
      containers:
        - image: postgres:15.1-alpine3.17
          name: postgres
          env:
            - name: POSTGRES_PASSWORD
              valueFrom:
                secretKeyRef:
                  name: db
                  key: password
          ports:
            - containerPort: 5432
              name: postgres
```

3. We modify the *worker* and *result* Deployments (the two microservices connecting to *db*) to add the POSTGRES_PASSWORD environment variable, which retrieves its value from the *db* Secret.

The new *worker* Deployment specification:

```yaml {filename="deploy-worker.yaml"}
apiVersion: apps/v1
kind: Deployment
metadata:
  labels:
    app: worker
  name: worker
spec:
  replicas: 1
  selector:
    matchLabels:
      app: worker
  template:
    metadata:
      labels:
        app: worker
    spec:
      containers:
        - image: voting/worker:latest
          name: worker
          env:
          - name: POSTGRES_PASSWORD
            valueFrom:
              secretKeyRef:
                name: db
                key: password
```

The new *result* Deployment specification:

``` yaml {filename="deploy-result.yaml"}
apiVersion: apps/v1
kind: Deployment
metadata:
  labels:
    app: result
  name: result
spec:
  replicas: 1
  selector:
    matchLabels:
      app: result
  template:
    metadata:
      labels:
        app: result
    spec:
      containers:
        - image: voting/result:latest
          name: result
          env:
            - name: POSTGRES_PASSWORD
              valueFrom:
                secretKeyRef:
                  name: db
                  key: password
```

4. We deploy the application with the following command from the *manifests* directory:

``` bash
kubectl apply -f .
```

As before, using the IP address of one of the cluster nodes, we can access the voting and result interfaces via ports *31000* and *31001*, respectively.

5. We delete the application with the following command from the *manifests* directory:

``` bash
kubectl delete -f .
```