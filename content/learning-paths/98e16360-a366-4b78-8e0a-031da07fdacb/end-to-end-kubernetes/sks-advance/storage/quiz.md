---
title: "Quiz"
passing_percentage: 70
questions:
    - id: "q1"
      text: "An arbitrary cloud provider offers managed Kubernetes. There a customer wants to deploy a database with a single replica. Which storage solutions would you generally recommend for production use?"
      type: "multiple-answers"
      marks: 2
      options:
        - id: "a"
          text: "Local Storage"
        - id: "b"
          text: "Block Storage"
          is_correct: true
        - id: "c"
          text: "LongHorn"
          is_correct: true
        - id: "d"
          text: "Ephemeral Storage"

    - id: "q2"
      text: "You deploy a database with possibly multiple replicas; each replica should get its volume. Which of the following options do you use?"
      type: "single-answer"
      marks: 2
      options:
        - id: "a"
          text: "Deployment"
        - id: "b"
          text: "StatefulSet"
          is_correct: true
        - id: "c"
          text: "VolumeSet"
        - id: "d"
          text: "DataSet"
layout: "test"
type: "test"
---
