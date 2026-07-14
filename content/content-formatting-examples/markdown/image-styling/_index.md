---
title: Image Styling
linkTitle: Image Styling

description: Examples of default Markdown image styling and raw HTML image overrides.
draft: true
---

By default, Markdown images are written like this:

```markdown
![Alt text](/path/to/image.png)
```

These are rendered with:

* `max-width: 70%` of the viewport
* `max-height: 80vh` of the viewport height
* centered block layout

This default styling works well for most landscape (horizontal) images. However, if an image is very tall, narrow, or otherwise looks awkward, you can override the default by embedding raw HTML and specifying a custom size:

```html
<img src="./images/example.png" alt="Example description"
style="max-width: 40vw; max-height: 60vh; display: block; margin: 1rem auto;" />
```
