---
title: "Kubernetes Building Blocks Quiz"
id: "kubernetes-building-blocks"
passing_percentage: 70
questions:
    - id: "q1"
      text: "What is true about Pods in Kubernetes?"
      type: "multiple-answers"
      marks: 2
      options:
        - id: "a"
          text: "Kubernetes manages Pods rather than managing containers directly"
          is_correct: true
        - id: "b"
          text: "If all containers in a Pod terminate, the Pod does not terminate"
        - id: "c"
          text: "Every Pod holds at least one container"
          is_correct: true
        - id: "d"
          text: "Containers are directly managed by Kubernetes"
        - id: "e"
          text: "There are multiple-container Pods"
          is_correct: true
        - id: "f"
          text: "Every Pod holds at least two containers"
        - id: "g"
          text: "There are single-container Pods"
          is_correct: true
    - id: "q2"
      text: "What is true about Deployments in Kubernetes?"
      type: "multiple-answers"
      marks: 2
      options:
        - id: "a"
          text: "Both stateless and rolling updates are supported by Deployments"
          is_correct: true
        - id: "b"
          text: "Behind the scenes, it uses ReplicaSets to keep the Pods running"
          is_correct: true
        - id: "c"
          text: "Offers sophisticated logic for deploying, updating, and scaling a set of Pods"
          is_correct: true
layout: "test"
type: "test"
---
This knowledge check section allows you to review your educational progress. It's not a test or an exam; it's a location determination in your learning journey. Give it a try!
