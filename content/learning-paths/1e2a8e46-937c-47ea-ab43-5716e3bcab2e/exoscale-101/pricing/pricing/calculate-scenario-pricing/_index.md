---
type: "page"
id: "Calculate Scenario Pricing"
description: ""
title: "Calculate Scenario Pricing"
weight: 3
---


### Calculate Scenario Pricing

For an overall scenario pricing, we have to add up all component prices - like the ones we calculated before - in our scenario, add data transfers to the internet and amount of storage in rest to the equation.

Additional storage costs are associated with the Simple Object Storage (SOS). A scalable, reliable, and cost-effective solution to support your application. Backup or serve your data from any Exoscale zone with no hidden fees, using your existing S3-compatible tooling and a familiar API.

#### Application Server Data Transfer Calculation
**6 x 720 x 1.42 GB = 6134.40 GB/month**
- data transfer to the Internet: 1000 GB/month
- free tier definition = 1.42 GB/h/instance

The free tier for our web-application consisting of 6 instances is 6134 GB; the monthly data transfer is 1000 GB to the Internet; hence it is below the free tier for our scenario.

#### Public File Bucket Calculation
**200 x 0.020 + 10000 x 0.020 = €204.00/month**
- 200 GB data stored
- 10 TB data transferred (10000 GB)

#### Backup Bucket Calculation
- 1000 x 0.020 = €20.00/month
- 1 TB data stored (1000 GB)

#### Calculation of Complete Scenario

| Item                                | Cost (€/month) |
|-------------------------------------|----------------|
| Application Server Instances        | € 87.35        |
| Database Server Instances           | € 221.75       |
| Backup Server Instance              | € 15.54        |
| Elastic IP                          | € 20.00        |
| DNS                                 | € 1.00         |
| Application Server Data Transfer    | € 0.00         |
| Public File Bucket                  | € 204.00       |
| Backup Bucket                       | € 20.00        |
| **TOTAL**                           | **€ 569.64**   |
