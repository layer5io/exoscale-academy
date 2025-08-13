---
type: "page"
id: "Backup"
description: ""
title: "Backup"
weight: 7
---

Explained
Solutions:

- Backup solutions existed well before cloud services were invented
- Companies or teams had their specific preferred backup solution
- Exoscale does not impose a specific solution
- Multiple possibilities available

### Snapshots
Do a full snapshot of a VM

- Easy to implement and automate
- Easy to fully restore Restores
- Easily create a template from a Snapshot

Hard to do partial restores

- Always the full disk is snapshotted -> Consumes a lot of space and incurs cost
- When a VM is deleted, Snapshots are also deleted
- Can be inconsistent, e.g., recovery of a Database might not be possible.

![snapshots-ui](snapshots-ui.png)

### Agent Based Backup
Backup the filesystem to an S3 bucket (potentially in a different zone):

- Incremental
- Partial restores
- Great flexibility
- Economical
- Harder to implement -> Requires a third-party application

{{< meshery-design-embed
  id="embedded-design-5cea201d-9ba7-4f5e-815d-1e1824374152"
  src="backup-abb1.js"
>}}

Restoring – Option A:

- Restore file system directly (i.e., using Restic)

{{< meshery-design-embed
  id="embedded-design-4ef2618a-84d9-42a9-8b79-fff0580abb1f"
  src="backup-abb2.js"
>}}


Restoring – Option B:

- Restore whole system (i.e., using UrBackup, Bareos)

{{< meshery-design-embed
  id="embedded-design-864f5d5d-a804-48e3-8801-331e637c9bba"
  src="backup-abb3.js"
>}}
