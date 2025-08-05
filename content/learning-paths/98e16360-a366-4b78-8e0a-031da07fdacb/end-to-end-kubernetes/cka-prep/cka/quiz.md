---
title: "Quiz"
passing_percentage: 70
questions:
  - id: "q1"
    text: "What command is used to view the status of pods in a Kubernetes cluster?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "kubectl list pods"
      - id: "b"
        text: "kubectl get pods"
        is_correct: true
      - id: "c"
        text: "kubectl show pods"
      - id: "d"
        text: "kubectl describe cluster"

  - id: "q2"
    text: "Kubernetes is a container orchestration platform."
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "true"
        is_correct: true
      - id: "b"
        text: "false"

    correct_answer: "true"

  - id: "q3"
    text: "What is the default namespace in Kubernetes if none is specified?"
    type: "short_answer"
    marks: 2
    correct_answer: "default"

  - id: "q4"
    text: "Which of the following are valid Kubernetes resource types?"
    type: "multiple-answers"
    marks: 2
    options:
      - id: "a"
        text: "Pod"
        is_correct: true
      - id: "b"
        text: "Service"
        is_correct: true
      - id: "c"
        text: "Container"
      - id: "d"
        text: "Deployment"
        is_correct: true

  - id: "q5"
    text: "Which controller ensures that the specified number of pod replicas are running at all times?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Deployment"
        is_correct: true
      - id: "b"
        text: "Service"
      - id: "c"
        text: "Namespace"
      - id: "d"
        text: "ReplicaSet"

  - id: "q6"
    text: "StatefulSets are used to manage stateless applications. (true/false)"
    type: "short_answer"
    marks: 2
    correct_answer: "false"

  - id: "q7"
    text: "What type of Kubernetes object exposes a set of pods as a network service?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "Deployment"
      - id: "b"
        text: "ReplicaSet"
      - id: "c"
        text: "Service"
        is_correct: true
      - id: "d"
        text: "ConfigMap"

  - id: "q8"
    text: "Which kubectl command is used to create resources from a configuration file?"
    type: "short_answer"
    marks: 2
    correct_answer: "kubectl apply -f"

  - id: "q9"
    text: "Which of the following are use cases for ConfigMaps?"
    type: "multiple-answers"
    marks: 2
    options:
      - id: "a"
        text: "Storing container logs"
      - id: "b"
        text: "Storing configuration data"
        is_correct: true
      - id: "c"
        text: "Injecting environment variables into Pods"
        is_correct: true
      - id: "d"
        text: "Scaling deployments"

  - id: "q10"
    text: "Which type of Kubernetes volume is used to persist data even after pod restarts?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "emptyDir"
      - id: "b"
        text: "hostPath"
      - id: "c"
        text: "persistentVolumeClaim"
        is_correct: true
      - id: "d"
        text: "configMap"
layout: "test"
type: "test"
---

This quiz will test your understanding of basic Kubernetes concepts, commands, and architecture.
