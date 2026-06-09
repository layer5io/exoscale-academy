---
type: "learning-path"
title: "Workshop Exoscale Intro"
description: "This hands-on workshop will help you deploying a microservice application in Kubernetes using Exoscale's platform and open-source tools"
weight: 12
id: "0e8df4e6-ed92-4687-a84f-c3dc61af912c"
tags: ["cloud", "exoscale"]
level: "beginner"
no_list: true
banner: "exoscale-icon.svg"
---

Welcome to this hands-on workshop where you'll learn to deploy a microservice application in Kubernetes using Exoscale's platform and open-source tools. This workshop provides detailed instructions and explanations to explore Exoscale's offering. It is organized into the following sections, each building upon the previous one. You can access a section directly by clicking on the corresponding card, but if you want to get the most out of this workshop it's recommended you follow the section in order, starting with the presentation of the [VotingApp](./votingapp).

{{< hextra/cards >}}
    {{< hextra/card    title="What is the VotingApp?" 
                subtitle="Introduction to our sample application"
                icon="votingapp"
                link="./1.votingapp"
    >}}
    {{< hextra/card    title="Deploying the VotingApp" 
                subtitle="Launch the application in an Exoscale-managed cluster"
                icon="exo-sks"
                link="./2.sks"
    >}}
    {{< hextra/card    title="Exposing the VotingApp" 
                subtitle="Use Network Load Balancer to expose the application" 
                icon="exo-nlb"
                link="./3.nlb"
    >}}
    {{< hextra/card    title="Configuring DNS" 
                subtitle="Expose the application on its own domain" 
                icon="exo-dns"
                link="./4.dns"
    >}}
    {{< hextra/card    title="Activating TLS" 
                subtitle="Automate certificate management with cert-manager"
                icon="cert-manager"
                link="./5.tls"
    >}}
    {{< hextra/card    title="Managing Secrets" 
                subtitle="Secure sensitive information with HashiCorp Vault"
                icon="vault"
                link="./6.vault"
    >}}
    {{< hextra/card    title="Persisting data in DBaaS" 
                subtitle="Store application data in Exoscale-managed databases"
                icon="exo-dbaas"
                link="./7.dbaas"
    >}}
    {{< hextra/card    title="Using Object Storage" 
                subtitle="Store application assets in Object Storage"
                icon="exo-sos"
                link="./8.sos"
    >}}
{{< /hextra/cards >}}
