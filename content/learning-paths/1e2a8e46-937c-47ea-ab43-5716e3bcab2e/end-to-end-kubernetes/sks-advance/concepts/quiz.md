---
title: "SKS Advanced Concepts Quiz"
passing_percentage: 70
questions:
    - id: "q1"
      text: "An Ingress Controller can ..."
      type: "multiple-answers"
      marks: 2
      options:
        - id: "a"
          text: "... define routes for HTTP or HTTPS traffic"
          is_correct: true
        - id: "b"
          text: "... terminate TLS traffic"
          is_correct: true
        - id: "c"
          text: "... load-balance traffic"
          is_correct: true
        - id: "d"
          text: "... guarantee high-availability"
        - id: "e"
          text: "... expose arbitrary ports or protocols"

    - id: "q2"
      text: "On which layer(s) does an Exoscale Network Load Balancer process traffic?"
      type: "single-answer"
      marks: 2
      options:
        - id: "a"
          text: "Layer 4"
          is_correct: true
        - id: "b"
          text: "Layer 4 and Layer 7"
        - id: "c"
          text: "Layer 7"


    - id: "q3"
      text: "Which of the following Kubernetes components does Exoscale SKS manage or at least deploy?"
      type: "multiple-answers"
      marks: 2
      options:
        - id: "a"
          text: "etcd Server"
          is_correct: true
        - id: "b"
          text: "api-server"
          is_correct: true
        - id: "c"
          text: "ccm (Cloud Controller Manager)"
          is_correct: true
        - id: "d"
          text: "netwerking plugins (besides Calico)"
        - id: "e"
          text: "kube-proxy (must exist on every node)"
          is_correct: true
        - id: "f"
          text: "kubernetes dashboard"
        - id: "g"
          text: "kubectl"

    - id: "q4"
      text: "A Kubernetes Manifest is:"
      type: "single-answer"
      marks: 2
      options:
        - id: "a"
          text: "Stateful"
        - id: "b"
          text: "Stateless"
          is_correct: true

    - id: "q5"
      text: "One Replica in a StatefulSet consists of:"
      type: "single-answer"
      marks: 2
      options:
        - id: "a"
          text: "One Container"
        - id: "b"
          text: "One or More Containers"
        - id: "c"
          text: "One Pod"
          is_correct: true
        - id: "d"
          text: "One or More Pods"
layout: "test"
type: "test"
---
