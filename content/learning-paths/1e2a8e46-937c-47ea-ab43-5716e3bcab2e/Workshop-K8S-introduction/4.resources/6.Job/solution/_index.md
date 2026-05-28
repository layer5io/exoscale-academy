---
title: Solution
weight: 3
aliases:
  - /learning-paths/1e2a8e46-937c-47ea-ab43-5716e3bcab2e/end-to-end-kubernetes/kubernetes-workshop/workshop/main-resources/content/job/content/practice/
---

1. The specification to define the *seed* CronJob is as follows:

    ``` yaml {filename="cronjob.yaml"}
    apiVersion: batch/v1
    kind: CronJob
    metadata:
      name: seed
    spec:
      schedule: "* * * * *"
      jobTemplate:
        metadata:
          name: seed
        spec:
          template:
            spec:
              containers:
              - image: voting/tools:latest
                name: seed
                env:
                - name: NUMBER_OF_VOTES
                  value: "10"
                imagePullPolicy: Always
              restartPolicy: OnFailure
    ```

2. Deploy the application with the following command from the *manifests* directory:

``` bash
kubectl apply -f .
```

Using the IP address of one of the cluster nodes, you can access the vote and result interfaces via ports *31000* and *31001* respectively. If you observe the *result* interface for a few minutes, you will see that 10 new votes are created every minute.

![Results](./images/result.png)

3. Delete the application with the following command from the *manifests* directory:

``` bash
kubectl delete -f .
```