---
title: "Quiz"
passing_percentage: 70
questions:
  - id: "q1"
    text: "If you create a Medium instance (€0.04666/h) with a 50 GB disk (€0.00014/GB/h) attached to it and run Windows (€0.01111/h) on it for 24 hours, how much will you pay?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "24 × 0.04666 = €1.12 ... you only need to pay for the machine."
      - id: "b"
        text: "24x 0.04666 + 24 x 50 x 0.00014 = €1.29 ... you pay for the machine and storage."
      - id: "c"
        text: "24 × 0.04666 + 24 × 50 x 0.00014 + 24 × 0.01111 = €1.55 ... you pay for the machine, storage and license"
        is_correct: true

  - id: "q2"
    text: "If you have 3 machines on Exoscale and you have a sudden traffic spike and the machines transfer 5 GB in one hour but otherwise incur no traffic, for how much data do you have to pay excess bandwidth fees?"
    type: "single-answer"
    marks: 2
    options:
      - id: "a"
        text: "None, the usage is within my allowance."
      - id: "b"
        text: "5 - (3 x 1.42) = 0.74 GB of data."
        is_correct: true
      - id: "c"
        text: "5 GB of data."


layout: "test"
type: "test"
---

This knowledge check section allows you to review your educational progress. It's not a test or an exam; it's a location determination in your learning journey. Give it a try!
