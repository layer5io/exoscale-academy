---
docType: "Chapter"
title: "Learn"
courseTitle: "Ingress"
weight: 2
---

## What is an Ingress ?

An Ingress resource allows exposing Services outside the cluster. There are other solutions to do so, such as:  

- a NodePort Service
- a Load Balancer Service

Use case examples:  

- HTTP routing via domain name or query content
- TLS termination

An Ingress resource is used by an Ingress Controller

## Ingress controller

An Ingress controller is a reverse proxy configured with Ingress resources.  
Among the existing solutions:  

- Nginx
- Traefik
- HAProxy
- Kong
- Contour
- Gloo

![ingressController]({{< usestatic "k8s-workshop/ingressController.png" >}})

## Routing using domain name

The following specification defines an Ingress resource which ensures the traffic arriving at *api.example.com* is forwarded to the *api* Service on port *80*:

``` yaml
apiVersion: networking.k8s.io/v1                 
kind: Ingress
metadata:
  name: myapp
spec:
  ingressClassName: nginx
  rules:
    - host: api.example.com
      http:
        paths:
          - path: /
            pathType: Prefix
            backend:
              service:
                name: api
                port:
                  number: 80
```

## Exposing the VotingApp with an Ingress resource

The previous exercise left the app with the following components:

![votingapp-5]({{< usestatic "k8s-workshop/votingapp-5.png" >}})

We will now use an Ingress Controller (based on [Traefik](https://doc.traefik.io/traefik/providers/kubernetes-ingress/)) and an Ingress resource to make the application available to the outside world:

![votingapp-6]({{< usestatic "k8s-workshop/votingapp-6.png" >}})

