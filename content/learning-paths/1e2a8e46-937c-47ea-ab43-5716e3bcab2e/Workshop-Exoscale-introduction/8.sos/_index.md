---
title: "Using Object Storage"
weight: 8
aliases:
  - /learning-paths/1e2a8e46-937c-47ea-ab43-5716e3bcab2e/end-to-end-kubernetes/practice-on-exoscale/practice/using-object-storage/
---

In this section, you'll use Simple Object Storage (SOS), an Exoscale AWS S3-compatible storage service, to store images used by the VotingApp.

## Using images instead of labels

The VotingApp allows dynamic configuration of labels and images. The default configuration is below; it uses string labels for *cats* and *dogs*.

```yaml
# Dynamic configuration
items:
  labels:
    a: "cats"
    b: "dogs"
  images:
    enabled: false
    a: https://sos-ch-gva-2.exo.io/votingapp/items/a.png
    b: https://sos-ch-gva-2.exo.io/votingapp/items/b.png
```

Modify your current *values.yaml* file, so it allows using images instead of labels.

```yaml {filename="values.yaml"}
items:
  images:
    enabled: true
```

{{< hextra/callout type="warning" >}}
By default, it uses images available at the following URLs:
- [https://sos-ch-gva-2.exo.io/votingapp/items/a.png](https://sos-ch-gva-2.exo.io/votingapp/items/a.png)
- [https://sos-ch-gva-2.exo.io/votingapp/items/b.png](https://sos-ch-gva-2.exo.io/votingapp/items/b.png)
{{< /hextra/callout >}}

Next, upgrade the application.

```bash
helm upgrade --install vote oci://registry-1.docker.io/voting/app --version v1.0.36 --namespace vote --create-namespace -f values.yaml
```

The *vote-ui* and *result-ui* web interfaces should now display images as follows:

![vote](./images/vote-images.png)

![result](./images/result-images.png)

In the next part, you'll use your images.

## Create a bucket

First, go to the Storage section.

![bucket list](./images/buckets-empty-list.png)

Next, create a bucket.

![bucket creation](./images/bucket-creation.png)

{{< hextra/callout type="warning" >}}
Since bucket names are global, do not use generic names, as somebody may already use them.
{{< /hextra/callout >}}

![bucket created](./images/bucket-created.png)

Next, explore the bucket's detailed page and select the "Upload Object" action.

![Upload objects](./images/upload-objects.png)

Select two images from your local machine.

{{< hextra/callout type="info" >}}
Please use square PNG images
{{< /hextra/callout >}}

![Objects uploaded](./images/objects-uploaded.png)

Change the "content-type" header into "image/png" for each image.

![Object change headers](./images/object-change-headers.png)

Next, add the *PUBLIC_READ* ACL to make the images public.

![Object add ACL](./images/object-add-acl.png)

From the image's detail page, get the public URL and use it in the *values.yaml* file as follows:

```yaml {filename="values.yaml"}
items:
  images:
    enabled: true
    a: https://sos-ch-gva-2.exo.io/votingapp-bucket-tom/argocd.png  # Use the URL of your image
    b: https://sos-ch-gva-2.exo.io/votingapp-bucket-tom/flux.png    # Use the URL of your image
```

```bash
helm upgrade --install vote oci://registry-1.docker.io/voting/app --version v1.0.36 --namespace vote --create-namespace -f values.yaml
```

![Vote GitOps](./images/vote-gitops.png)

![Result GitOps](./images/result-gitops.png)
 
{{< hextra/callout type="info" >}}
Want to know more about Exoscale Object Storage offering? Visit the [documentation](https://community.exoscale.com/documentation/storage/) to get the entire feature set.
{{< /hextra/callout >}}
