---
docType: "Course"
title: "Deploying the VotingApp"
description: "Launch the application in exoscale managed cluster"
courseTitle: "Deploying the VotingApp"
weight: 2
banner: "exoscale-icon.svg"
tags: [kubernetes, infrastructure, exoscale]
level: "beginner"
---

The VotingApp can be deployed using [Helm](https://helm.sh). It has many configuration options, the default values of which are defined in the following *values.yaml* file.

```yaml {filename="values.yaml"}
# Microservices tags
vote-ui:
  tag: v1.0.33
vote:
  tag: v1.0.16
worker:
  tag: v1.0.17
result:
  tag: v1.0.21
result-ui:
  tag: v1.0.24
seed:
  tag: v1.0.1
# Ingress configuration
ingress:
  enabled: false
  tls:
    enabled: false
    certManager:
      clusterIssuer: letsencrypt
  hosts:
    vote: vote.votingapp.cc
    result: result.votingapp.cc
# Postgres configuration
postgres:
  credentials:
    username: postgres
    password: postgres
    externalSecrets:
      enabled: false
      username:
        key: votingapp/data/pg/username
        field: username
      password:
        key: votingapp/data/pg/password
        field: password
  connection:
    url: ""
    externalSecrets:
      enabled: false
      key: votingapp/data/pg/url
      field: url
  persistence:
    enabled: false
    storageClass: ""
    size: 10Gi
# Redis configuration
redis:
  url: ""
  externalSecrets:
    enabled: false
    key: votingapp/data/redis/url
    field: url
# Using NATS instead of worker + databases mode
nats:
  enabled: false
# Recurrent seeding of votes
seeding:
  enabled: false
  schedule: "0 * * * *"
  numberOfVotes: 5
# Dynamic configuration
items:
  labels:
    a: "cats"
    b: "dogs"
  images:
    enabled: false
    a: https://sos-ch-gva-2.exo.io/votingapp/items/a.png
    b: https://sos-ch-gva-2.exo.io/votingapp/items/b.png
```

We’ll explore some of those parameters in the next part, but for now, you’ll deploy the VotingApp using the default values as follows:

```bash
helm install vote oci://registry-1.docker.io/voting/app --version v1.0.36 --namespace vote --create-namespace
```

In the background, it creates a Deployment with one Pod replica for each microservice:

```bash
$ kubectl get po -n vote
NAME                         READY   STATUS    RESTARTS   AGE
db-7fb64787d4-5nnvl          1/1     Running   0          12s
redis-7f746b589b-f8xnb       1/1     Running   0          12s
result-5c9d7b7484-lkd2c      1/1     Running   0          12s
result-ui-76c98c9cbd-zd7d8   1/1     Running   0          12s
vote-65d95d8fc7-gvnsm        1/1     Running   0          12s
vote-ui-57cb5f4f65-cfq5j     1/1     Running   0          12s
worker-7cfccf8f76-5f6mp      1/1     Running   0          12s
```

## Access via a NodePort service

Since the application is deployed with the default values, the vote-ui and result-ui web frontends are exposed using the NodePort Service type:

```bash
$ kubectl get svc -n vote
NAME        TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)        AGE
db          ClusterIP   10.103.163.197   <none>        5432/TCP       49s
redis       ClusterIP   10.100.254.235   <none>        6379/TCP       49s
result      ClusterIP   10.106.156.29    <none>        5000/TCP       49s
result-ui   NodePort    10.111.35.241    <none>        80:31001/TCP   49s
vote        ClusterIP   10.96.177.44     <none>        5000/TCP       49s
vote-ui     NodePort    10.105.215.174   <none>        80:31000/TCP   49s
```

Using the following command, get the external IP of any node and verify you can access the web frontends on port 31000 (vote-ui) and 31001 (result-ui)

```bash
$ kubectl get no -o wide
```

![access-nodeport](access-nodeport.png)

![access-nodeport2](access-nodeport2.png)

Using NodePort Services is not a recommended way to expose production application; for this purpose, we need to use a LoadBalancer Services, as we will explore in the next section.
