multipass exec master -- /bin/bash -c "
  kubectl -n kube-system scale deploy/coredns --replicas=2
"