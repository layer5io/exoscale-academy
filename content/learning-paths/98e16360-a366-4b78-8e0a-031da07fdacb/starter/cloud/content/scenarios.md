---
docType: "Chapter"
id: "Scenarios"
chapterTitle: "Scenarios"
description: ""
title: "Scenarios"
weight: 4
---


### **Generic IaaS Use Cases**

![cloud-computing]({{< usestatic "starter/generic.png" >}})

#### **Lift & Shift**
One speaks of Lift & Shift when moving existing, traditional workloads into an IaaS cloud as unaltered as possible is unavoidable. Management Tools for IT Operations are, as far as possible, supported by the existing Data Center Operation taken over and implemented. Cloud-native functions have little or no application.

#### **Improve & Move**
One speaks of Improve & Move if you adapt and modify IT processes in this approach to take advantage of cloud-native functions at least partially. You should use the migration process to achieve a more substantial standardization, a higher degree of automation, and free existing processes from legacy burdens.

#### **Design & Build**
One speaks of Design & Build if you redefine all or all new business and IT processes. Further, you use agile, cloud-native methods in your developments wherever possible. Tools used are cloud-native and DevOps-oriented throughout the application life cycle, focusing strongly on Infrastructure as Code (IaC) and automation.

### **Specific IaaS Use Cases**

#### **Test Cloud**

![test-cloud]({{< usestatic "starter/test-cloud.png" >}})

**Problem**: Since every failure of the online betting portal brings an enormous loss of earnings, NoName Inc. wants to build a more stable web presence with reduced or no downtime. Simultaneously, the web portal enables many browsers to reach additional markets. Before releasing new web portal products to customers, all changes need testing in various browsers (Edge, Chrome, Firefox, Safari, ...) to increase the overall stability. New development standards should provide prompt feedback whenever a developer makes a change. This way, detecting problems is possible before releasing new products. Parallel execution of individual test scenarios enables quicker feedback to the developer but requires approximately 1200 servers temporarily for each test run.

**Solution**: Exoscale has several interfaces (REST API, Tool Integrations, e.g., Terraform), allowing a flexible and automatic deployment. Creating new servers is achieved within a few minutes. Execution and the afterward decommission of used test-serves are done in no time.

**Advantages**: The high degree of automation provided by Exoscale makes such a modern and performance test scenario possible. This solution eliminates the expensive acquisition of servers and complex internal procurement. With the Pay-Per-Use principle, the second charges the customer for used server resources.

#### **Productivity**

![productivity]({{< usestatic "starter/productivity.png" >}})

**Problem**: The young software company NoName Ltd wants to simplify joint digital team collaboration utilizing video chat. With little effort, the platform should offer teams a high-performance, straightforward solution to discuss open topics daily. The newly developed and patented streaming algorithm led to massive performance improvement. Integrations to task management, CRM, and knowledge base systems facilitate team collaboration during a digital meeting. The platform uses a separate server for each session, and the server is needed in the timeframe when the meeting takes place. Depending on the requests, a strongly varying number of servers may be necessary.

**Solution**: Due to the excellent integration of tools that allow the creation, configuration, and control of the infrastructure, Exoscale offers an ideal foundation to meet flexible requirements. Thus, NoName Ltd can provide infrastructure fast and automated.

**Advantages**: Due to the need for a flexible number of servers, NoName Ltd would have to purchase a large pool of servers. Exoscale flexibility contributes to risk minimization and resource management by providing components in a Pay-Per-Use model billed by the second. Creating more servers for digital meetings is easy if more customers decide to use the platform.

#### **Image Analysis**

![image-analysis]({{< usestatic "starter/image-analysis.png" >}})

**Problem**: A new and modern image analysis algorithm developed by NoName LLC should ensure the high weekly production volume's product quality. However, a considerable amount of high-performance computing resources is required to ensure the algorithm's quality and timely completion of the machine learning training phase. NoName LLC wants to offload the complexity associated with this task and does not wish to operate or purchase any servers.

**Solution**: Exoscale provides modern GPU instances optimized for advanced computational tasks like machine learning, artificial intelligence, and high-performance computing.

**Advantages**: Outsourcing the complexity of the needed infrastructure configuration and using the high-cost hardware equipment in a Pay-Per-Use model delivers many operational advantages simultaneously. For example, the GPUs architecture has simpler calculation units but performs more calculations per time to optimize, e.g., ideal for machine learning tasks.