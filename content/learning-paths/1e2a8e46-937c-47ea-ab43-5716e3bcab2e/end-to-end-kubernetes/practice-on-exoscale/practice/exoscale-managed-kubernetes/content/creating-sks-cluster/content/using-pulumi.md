---
docType: "Chapter"
title: "Using Pulumi"
courseTitle: "Creating SKS Cluster"
weight: 3
tags: [kubernetes, infrastructure]
level: "intermediate"
---

In a new folder, we create the following files:

- Pulumi.yaml, which defines the Exoscale resources to create (security group, security group rules, SKS cluster, node pool and kubeconfig file)

- Pulumi.demo.yaml, which defines the configuration option to apply to Pulumi.yaml in order to create a specific stack named demo

```yaml {filename="Pulumi.yaml"}
name: sks-template
runtime: yaml
description: SKS cluster management
config:
    zone:
        type: string
    version:
        type: string
    size:
        type: integer
    instanceType:
        type: string
    nodepoolSuffix:
        type: integer
        default: 0
outputs:
    kubeConfig: ${kubeconfig.kubeconfig}
resources:
    exoscale-provider:
        type: pulumi:providers:exoscale
        defaultProvider: true
        options:
            version: 0.59.2
    securityGroup:
        type: exoscale:SecurityGroup
        properties:
            description: Security group for Kubernetes nodes
            name: sg-${pulumi.stack}
    securityGroupRulesNodePorts:
        type: exoscale:SecurityGroupRule
        properties:
            securityGroupId: ${securityGroup.id}
            type: INGRESS
            protocol: TCP
            cidr: 0.0.0.0/0
            startPort: 30000
            endPort: 32767
    securityGroupRulesKubelet:
        type: exoscale:SecurityGroupRule
        properties:
            securityGroupId: ${securityGroup.id}
            type: INGRESS
            protocol: TCP
            userSecurityGroupId: ${securityGroup.id}
            startPort: 10250
            endPort: 10251
    securityGroupRulesPrometheus:
        type: exoscale:SecurityGroupRule
        properties:
            securityGroupId: ${securityGroup.id}
            type: INGRESS
            protocol: TCP
            userSecurityGroupId: ${securityGroup.id}
            startPort: 9100
            endPort: 9100
    securityGroupRulesCiliumVXLAN:
        type: exoscale:SecurityGroupRule
        properties:
            securityGroupId: ${securityGroup.id}
            type: INGRESS
            protocol: UDP
            userSecurityGroupId: ${securityGroup.id}
            startPort: 8472
            endPort: 8472
    securityGroupRulesCiliumHCICMP:
        type: exoscale:SecurityGroupRule
        properties:
            securityGroupId: ${securityGroup.id}
            type: INGRESS
            protocol: ICMP
            userSecurityGroupId: ${securityGroup.id}
            icmpCode: 0
            icmpType: 8
    securityGroupRulesCiliumHCTCP:
        type: exoscale:SecurityGroupRule
        properties:
            securityGroupId: ${securityGroup.id}
            type: INGRESS
            protocol: TCP
            userSecurityGroupId: ${securityGroup.id}
            startPort: 4240
            endPort: 4240
    cluster:
        type: exoscale:SksCluster
        properties:
            autoUpgrade: false
            cni: cilium
            description: demo SKS cluster
            exoscaleCcm: true
            exoscaleCsi: true
            metricsServer: true
            serviceLevel: starter
            name: sks-${pulumi.stack}
            zone: ${zone}
            version: ${version}
    nodepool:
        type: exoscale:SksNodepool
        properties:
            clusterId: ${cluster.id}
            name: sks-${pulumi.stack}-${nodepoolSuffix}
            zone: ${cluster.zone}
            instanceType: ${instanceType}
            size: ${size}
            securityGroupIds:
            - ${securityGroup.id}
        options:
            replaceOnChanges:
            - name
    kubeconfig:
        type: exoscale:SksKubeconfig
        properties:
            clusterId: ${cluster.id}
            earlyRenewalSeconds: 0
            groups:
                - system:masters
            ttlSeconds: 0
            user: kubernetes-admin
            zone: ${cluster.zone}
```

```yaml {filename="Pulumi.demo.yaml"}
config:
    zone: ch-gva-2
    version: "" # latest kubernetes version available is used if left empty
    size: 3
    instanceType: standard.medium
    nodepoolSuffix: 0
```

Next, we log into the Pulumi cloud (the place where the state of the stack is stored).

```bash
pulumi login
```

Next, we set the env variables so Pulumi can connect to the Exoscale API.

```bash
export EXOSCALE_API_KEY=...
export EXOSCALE_API_SECRET=...
```

Next, we initialize the demo stack.

```bash
pulumi stack init demo
```

We can verify the stack exists in the Pulumi backend.

```bash
pulumi stack ls
```

![pulumi-template](pulumi-template.png)

Before deploying the stack, we preview the resources it will create.

```bash
pulumi preview
```

This returns an output similar to the following one:

```bash
Previewing update (demo)

View in Browser (Ctrl+O): https://app.pulumi.com/lucj/sks-template/demo/previews/7b2dedb7-0cb5-42df-9980-5404c1ff09d5

     Type                                 Name                            Plan
 +   pulumi:pulumi:Stack                  sks-template-demo               create
 +   ├─ exoscale:index:SecurityGroup      securityGroup                   create
 +   ├─ exoscale:index:SksCluster         cluster                         create
 +   ├─ exoscale:index:SecurityGroupRule  securityGroupRulesKubelet       create
 +   ├─ exoscale:index:SecurityGroupRule  securityGroupRulesCiliumHCICMP  create
 +   ├─ exoscale:index:SecurityGroupRule  securityGroupRulesNodePorts     create
 +   ├─ exoscale:index:SecurityGroupRule  securityGroupRulesCiliumVXLAN   create
 +   ├─ exoscale:index:SksNodepool        nodepool                        create
 +   ├─ exoscale:index:SecurityGroupRule  securityGroupRulesCiliumHCTCP   create
 +   ├─ exoscale:index:SecurityGroupRule  securityGroupRulesPrometheus    create
 +   └─ exoscale:index:SksKubeconfig      kubeconfig                      create

Outputs:
    kubeConfig: output<string>

Resources:
    + 11 to create
```

> [!INFO]
> It takes about 2 minutes for the cluster and the associated resources to be available.

![pulumi-cluster](pulumi-cluster.png)

Next, we retrieve the kubeconfig file.

```bash
pulumi stack output kubeConfig --show-secrets > kubeconfig
```

We configure our local kubectl.

```bash
export KUBECONFIG=$PWD/kubeconfig
```

Then, we can access the cluster.

```bash
kubectl get nodes
```

> [!WARNING]
> Once you have completed the workshop, don't forget to delete the cluster and the associated resources with the following commands:

```bash
# Delete the infrastructure
pulumi destroy

# Remove the stack from the Pulumi backend
pulumi stack rm demo

# Remove kubeconfig file
rm $KUBECONFIG
```