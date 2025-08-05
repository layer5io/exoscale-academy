---
title: "Quiz"
passing_percentage: 70
questions:
    - id: "q1"
      text: "The command > kubectl logs my-pod outputs ..."
      type: "single-answer"
      marks: 2
      options:
        - id: "a"
          text: "stdout (standard output) of the container in the Pod"
          is_correct: true
        - id: "b"
          text: "Kubernetes throw errors in regard to the Pod"
        - id: "c"
          text: "Data of the Pod - like the number of replicas"

    - id: "q2"
      text: "The Pod frontend in the namespace webapp doesn’t work as expected. Which commands can you use to get more information about that?"
      type: "multiple-answers"
      marks: 2
      options:
        - id: "a"
          text: "kubectl get pods -n webapp -o wide"
          is_correct: true
        - id: "b"
          text: "kubectl describe pod frontend -n webapp"
          is_correct: true
        - id: "c"
          text: "kubectl logs frontend -n webapp"
          is_correct: true
        - id: "d"
          text: "kubectl get events -n webapp"
          is_correct: true
        - id: "e"
          text: "kubectl get events"
        - id: "f"
          text: "kubectl get errors -n webapp"
layout: "test"
type: "test"
---
