---
title: Exercise
weight: 2
aliases:
  - /learning-paths/1e2a8e46-937c-47ea-ab43-5716e3bcab2e/end-to-end-kubernetes/kubernetes-workshop/workshop/main-resources/content/ingress/content/practice/
---

In this exercise, you'll expose the VotingApp with an Ingress resource.

1. Traefik Ingress Controller

Since the cluster used in this section is based on k3s, it comes with Traefik Ingress Controller by default. This can be verified using the following command.

```bash
$ kubectl get po -n kube-system | grep traefik
helm-install-traefik-crd-vj4hz            0/1     Completed   0          56m
helm-install-traefik-qg2g5                0/1     Completed   1          56m
svclb-traefik-de21cf3d-vctd2              2/2     Running     0          56m
traefik-57b79cf995-vf6qh                  1/1     Running     0          56m
```

{{< hextra/callout type="info" >}}
If you used another local cluster, for example one based on [Minikube](https://minikube.sigs.k8s.io/docs/), you need to install Traefik manually. This can be done using the following commands which require the [helm](https://helm.sh/docs/intro/install/) binary to be installed locally. You'll get more information about helm in the next section.

```bash
helm repo add traefik https://traefik.github.io/charts
helm repo update
helm install traefik traefik/traefik --namespace kube-system
```
{{< /hextra/callout >}}

Get the external IP of this load-balancer as you will need it in the next part. 

``` bash
$ kubectl get service -n kube-system | grep traefik
NAME      TYPE           CLUSTER-IP     EXTERNAL-IP    PORT(S)                      AGE
traefik          LoadBalancer   10.43.2.146   192.168.64.8   80:32667/TCP,443:32545/TCP   57m
```

In this example, the external IP address is *192.168.64.8*. This is the IP address of the Ubuntu VM you created using Multipass, in a previous step.

2. In a file named *ingress.yaml*, define the specification for an *Ingress* resource with the following characteristics:

- Name: vote
- ingressClassName: traefik
- All requests to the URL *vote.votingapp.com* should be redirected to port 80 of the *vote-ui* service
- All requests to the URL *result.votingapp.com* should be redirected to port 80 of the *result-ui* service

Update your */etc/hosts* file so that the URLs *vote.votingapp.com* and *result.votingapp.com* resolve to the IP address of the Ingress Controller (the one you get before)


Then you should modify your */etc/hosts* file to add the following entry:

``` bash
...
IP_OF_YOUR_VM vote.votingapp.com result.votingapp.com
```

{{< hextra/callout >}}
If you do not have the necessary permissions to modify your */etc/hosts* file, you can use the *nip.io* service and set the domain names *vote.IP_OF_YOUR_VM.nip.io* / *result.IP_OF_YOUR_VM.nip.io* instead of *vote.votingapp.com* / *result.votingapp.com* in your Ingress resource definition.
{{< /hextra/callout >}}

3. Deploy the application and verify that the vote interface is available at *http://vote.votingapp.com* and the result interface is available at *http://result.votingapp.com* (or at *http://vote.IP_OF_YOUR_VM.nip.io* / *http://result.IP_OF_YOUR_VM.nip.io* if you are using the nip.io approach).

4. Delete the application.
