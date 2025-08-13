---
docType: "Chapter"
title: "Using exo CLI"
courseTitle: "Creating SKS Cluster"
weight: 4
tags: [kubernetes, exo-cli, infrastructure]
level: "intermediate"
---

The shell script sks.sh, detailed below, creates the following Exoscale resources:

- a security group
- security group rules
- a SKS cluster
- a node pool for the SKS cluster

> [!WARNING]
> This script allows the creation of an SKS cluster easily. This is fine for a workshop, but it must not be used to create a production cluster

```bash {filename="sks.sh"}
#!/usr/bin/env bash
# set -euo pipefail

CURRENT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

function usage {
  echo $1
  echo "usage: sks.sh -n NAME [-s SIZE] [-t TYPE] [-l LEVEL] [-z ZONE] [-p NETWORK] [-v VERSION]"
  exit 1
}

# Creation of a Security Group
function create-sg {
  exo compute security-group create sks-${NAME}

  # Creating of the rules related to the security group

  exo compute security-group rule add sks-${NAME} \
    --description "NodePort services" \
    --protocol tcp \
    --network 0.0.0.0/0 \
    --port 30000-32767

  exo compute security-group rule add sks-${NAME} \
    --description "SKS kubelet" \
    --protocol tcp \
    --port 10250-10251 \
    --security-group sks-${NAME}

  exo compute security-group rule add sks-${NAME} \
    --description "Prometheus metrics" \
    --protocol tcp \
    --port 9100 \
    --security-group sks-${NAME}

  if [ "${NETWORK}" = "cilium" ]; then
    exo compute security-group rule add sks-${NAME} \
      --description "Cilium VXLAN" \
      --protocol udp \
      --port 8472 \
      --security-group sks-${NAME}

    exo compute security-group rule add sks-${NAME} \
      --description "Cilium Health-check ICMP" \
      --protocol icmp \
      --icmp-code 0 \
      --icmp-type 8 \
      --security-group sks-${NAME}

    exo compute security-group rule add sks-${NAME} \
      --description "Cilium Health-check TCP" \
      --protocol tcp \
      --port 4240 \
      --security-group sks-${NAME}
  else # Calico
    exo compute security-group rule add sks-${NAME} \
      --description "Calico traffic" \
      --protocol udp \
      --port 4789 \
      --security-group sks-${NAME}
  fi
}

# Creation of the cluster
function create-cluster {
  exo compute sks create $NAME \
     --zone ${ZONE} \
    --auto-upgrade \
    --cni ${NETWORK} \
    --exoscale-csi \
    --service-level ${LEVEL} \
    --kubernetes-version ${VERSION} \
    --nodepool-name sks-${NAME} \
    --nodepool-instance-type standard.${TYPE} \
    --nodepool-size ${SIZE} \
    --nodepool-disk-size 50 \
    --nodepool-security-group sks-${NAME}
}

# Get the kubeconfig file and modify it a bit
function get-kubeconfig {
  # Get kubeconfig file
  exo compute sks kubeconfig $NAME cluster-admin -z $ZONE > $CURRENT_DIR/sks-$NAME.kubeconfig

  # Rename cluster-admin user
  gsed -i "s/cluster-admin/cluster-admin-$NAME/g" "$CURRENT_DIR/sks-$NAME.kubeconfig"

  # Rename the context
  CONTEXT=$(KUBECONFIG=$CURRENT_DIR/sks-$NAME.kubeconfig kubectl config current-context)
  KUBECONFIG=$CURRENT_DIR/sks-$NAME.kubeconfig kubectl config rename-context $CONTEXT $NAME

  echo "Use the cluster:"
  echo $CURRENT_DIR
  echo "export KUBECONFIG=$CURRENT_DIR/sks-$NAME.kubeconfig"
}

# Delete nodepool
function delete-nodepool {
  for np in $(exo compute sks nodepool list -O json | jq -r ".[].id"); do
    exo compute sks nodepool delete $NAME $np -f -z $ZONE;
  done
}

# Delete cluster
function delete-cluster {
  exo compute sks delete -f -z $ZONE $NAME

  # Remove kubeconfig file
  rm $CURRENT_DIR/sks-$NAME.kubeconfig
}

# Delete security groups
function delete-sg {
  # Delete the rules of the associated security group
  for rule in $(exo compute security-group show sks-$NAME -O json | jq -r ".ingress_rules[].id"); do
    exo compute security-group rule delete -f sks-$NAME $rule;
  done

  # Delete associated security group
  exo compute security-group delete -f sks-$NAME
}

# Argument parsing
while getopts "dt:s:n:l:p:z:v:" option; do
    case "${option}" in
        d)
            ACTION="delete"
            ;;
        t)
            TYPE=${OPTARG}
            ;;
        s)
            SIZE=${OPTARG}
            ;;
        l)
            LEVEL=${OPTARG}
            ;;
        n)
            NAME=${OPTARG}
            ;;
        p)
            NETWORK=${OPTARG}
            ;;
        z)
            ZONE=${OPTARG}
            ;;
        v)
            VERSION=${OPTARG}
            ;;
            *)
            usage
            ;;
    esac
done

# Make sure the name is provided for create and delete actions
if [ -z "$NAME" ]; then
    usage "Cluster name must be provided though the -n flag"
fi

# Default values to params
TYPE=${TYPE:-medium}
SIZE=${SIZE:-"3"}
LEVEL=${LEVEL:-"starter"}
ZONE=${ZONE:-"ch-gva-2"}
NETWORK=${NETWORK:-"cilium"}
VERSION=${VERSION:-"latest"}

# Get action to perform
ACTION=${ACTION:-"create"}

# Handling deletion
if [ "$ACTION" = "delete" ]; then
  delete-nodepool
  delete-sg
  delete-cluster
  exit 0
fi

# Handling creation
create-sg
create-cluster
get-kubeconfig
```

This script also generates a kubeconfig file to access the cluster API Server.

First, we need to set env variables to communicate with the Exoscale API.

```bash
export EXOSCALE_API_KEY=...
export EXOSCALE_API_SECRET=...
```

Next, we run the script providing the name of the cluster:

```bash
./sks.sh -n demo
```

> [!INFO]
> It takes about 2 minutes for the cluster and the associated resources to be created.

Once created, we can configure our local kubectl

```bash
export KUBECONFIG=$PWD/sks-demo.kubeconfig
```

Then, we verify we can access the cluster, listing its nodes.

```bash
kubectl get node
```

> [!WARNING]
> Once you have completed the workshop, don't forget to delete the cluster and the associated resources with the following commands:

```bash
sks.sh -d -n demo
```
