---
docType: "Chapter"
id: "Calculate Product Pricing"
chapterTitle: "Calculate Product Pricing"
description: ""
title: "Calculate Product Pricing"
weight: 2
---


### **Calculate Product Pricing**

Usually, you want to know the cost for a resource on a monthly basis, like you know your cost for other subscriptions like your mobile data plan, Spotify, Netflix and so forth.

The official pricing can be found on the web exoscle.com/pricing and in the official price list. There you can find hourly pricing for the different products. In the Exoscale realm, we calculate with 720 hours per month, and other cloud providers use, e.g. 730 hours per month, this information is relevant if you want to compare monthly pricing.


#### **Application Server Instances Calculation**
**2 x 720 x (100 x 0.00014 + 0.04666) = €87.35/month**
- 2x Medium (€0.04666/h)
- 100 GB disk (€0.00014/h/GB)
- 720 hours per month
#### **Database Server Instances Calculation**
**3 x 720 x (400 x 0.00014 + 0.04666) = €221.75/month**
- 3x Medium (€0.04666/h)
- 400 GB disk (€0.00014/h/GB)
- 720 hours per month
#### **Backup Server Instance Calculation**
**1 x 720 x (50 x 0.00014 + 0.01458) = €15.54/month**
- 1x Tiny (€0.01458/h)
- 50 GB disk (€0.00014/h/GB)
- 720 hours per month
#### **Elastic IP Calculation**
- 2 x 720 x 0.01389 = €20.00/month
- 2x Elastic IP v2 (€0.01389/h)
- 720 hours per month
#### **Exoscale DNS Calculation**
**1x SMALL = €1/month**
- 1x SMALL
- monthly subscription

With DNS you enrol to a monthly recurring subscription, automatically renewed. Every package entitles you to register up to the indicated number of zones.

| Plan   | Zones     | Cost (€/month) |
|--------|-----------|----------------|
| SMALL  | 1 Zone    | €1.00          |
| MEDIUM | 10 Zones  | €5.00          |
| LARGE  | 50 Zones  | €25.00         |
