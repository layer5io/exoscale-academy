# Exoscale Academy

Welcome to **Exoscale Academy**, the dedicated cloud education and training platform powered by Layer5. This repository provides a comprehensive framework for creating, organizing, and publishing structured learning paths, challenges and certifications tailored for Exoscale users and cloud practitioners.

## Design Resources

To help you create professional and visually consistent content, this academy provides the official **Exoscale Icons** model for building custom architecture diagrams.

> You can preview the full collection of icons anytime on the [**Meshery Catalog**](https://meshery.io/catalog/models/exoscale-icons).

### How to Use the Icons

1. **Import the Model:** Navigate to your **[Registry Settings in Meshery](https://kanvas.new/settings?settingsCategory=Registry&tab=Models)**.
2. Select "Import from URL".
3. Paste the following URL to import the icon set:

    ```
    https://meshery.io/assets/modelsFiles/exoscale-icons.tar
    ```

Once imported, the individual Exoscale icons will be available in the Designer's **shapes** palette for you to use.

## Table of Contents

- [Exoscale Academy](#exoscale-academy)
  - [Design Resources](#design-resources)
    - [How to Use the Icons](#how-to-use-the-icons)
  - [Table of Contents](#table-of-contents)
  - [Prerequisites](#prerequisites)
  - [Getting Started](#getting-started)
  - [Repository Structure](#repository-structure)
  - [Content Authoring Workflow](#content-authoring-workflow)
  - [Managing Assets: Images, Videos, and Embedded Designs](#managing-assets-images-videos-and-embedded-designs)
    - [How to Add an Image](#how-to-add-an-image)
    - [How to Add a Video](#how-to-add-a-video)
  - [How to Add a Meshery Design](#how-to-add-a-meshery-design)
  - [Local Development](#local-development)
  - [Deploying \& Going Live](#deploying--going-live)
  - [Contributing](#contributing)
  - [Site Framework](#site-framework)
  - [License](#license)

## Prerequisites

Before you begin, ensure you have:

- [**Hugo**](https://gohugo.io/getting-started/installing/) (extended version, recommended v0.147.9 or later)
- [**Go**](https://go.dev/doc/install) (v1.12 or later)

## Getting Started

1. **Clone the Repository**

   ```bash
   git clone https://github.com/layer5io/exoscale-academy.git
   cd exoscale-academy
   ```

2. **(Optional: If contributing from a fork)**
   - Edit `go.mod` and update the module path to match your fork. Save and commit.

3. **Organization UID**
   - All Exoscale Academy content is namespaced under its Organization ID:

     ```
     1e2a8e46-937c-47ea-ab43-5716e3bcab2e
     ```

## Repository Structure

```
layer5io-exoscale-academy/
├── README.md
├── LICENSE
├── go.mod, go.sum
├── hugo.yaml
├── Makefile, flake.nix, flake.lock, package.json, postcss.config.js
├── content/
│   └── en/
│       └── learning-paths/
│           └── 1e2a8e46-937c-47ea-ab43-5716e3bcab2e/
│               └── /
│                   └── /
│                       └── /
│                           └── content/
│                               └── .md
├── static/
│   └── 1e2a8e46-937c-47ea-ab43-5716e3bcab2e/
│       └── images/
├── layouts/
│   └── shortcodes/
│       └── 1e2a8e46-937c-47ea-ab43-5716e3bcab2e/
│           └── custom-org-shortcode.html
└── .github/
    └── ISSUE_TEMPLATE/, workflows/, config, etc.
```

> **Learning Path → Course → Module** is the core structure.
Each level uses `_index.md` files with [Hugo frontmatter](https://gohugo.io/content-management/front-matter/).

## Content Authoring Workflow

1. **Create Content**

   - Authoring takes place inside:

     ```
     content/en/learning-paths/1e2a8e46-937c-47ea-ab43-5716e3bcab2e/
     ```

   - Structure:

     ```
     <learning-path>/
      <course>/
        <module>/
            content/
              module1.md
              module2.md
     ```

   - **Frontmatter Required** (example for any `_index.md`):

     ```yaml
     ---
     title: "Title of Section"
     description: "One-liner summary"
     weight: 10  # for menu order, lower numbers appear first
     ---
     ```

2. **Delete Example Content**
   - Remove any demo/example files not relevant to your new material.

3. **Organize Contens**
   - Add new folders and markdown files for each learning path, course and module.

## Managing Assets: Images, Videos, and Embedded Designs

Enhance your courses with images and rich visual content using the **Page Bundling** method for optimal compatibility with the Layer5 Academy platform.

### How to Add an Image

1. Place your image files directly in the same directory as your markdown content (Page Bundling method):

    ```
    content/en/learning-paths/1e2a8e46-937c-47ea-ab43-5716e3bcab2e/
    └── your-course/
        └── your-module/
            ├── _index.md
            └── exoscale-logo.png
    ```

2. In your markdown file, reference the image using standard Markdown syntax:

    ```markdown
    ![Exoscale Logo](exoscale-logo.png)
    ```

> **Note:** The `usestatic` shortcode is **deprecated** and should not be used. Use the Page Bundling method above for better asset management and compatibility.

### How to Add a Video

Embed videos in a visually distinct `card` using:

```markdown
{{</* card title="Video: Example" */>}}
<video width="100%" height="100%" controls>
    <source src="https://example.com/your-video.mp4" type="video/mp4">
    Your browser does not support the video tag.
</video>
{{</* /card */>}}
```

## How to Add a Meshery Design

1. Place Design Assets
   Put your design files (e.g., `cdn.js`, design YAMLs) alongside your course or module content, ideally following the same directory conventions used for images.

2. Embed Using the meshery-design-embed Shortcode
   In your markdown file, use:

  ```markdown
  {{< meshery-design-embed
  id="embedded-design-0e3abb9c-39e7-4d09-b46f-26a0238c3c3d"
  src="cdn.js"
  >}}
  ```

- Replace `id` with the unique identifier for your design.
- Replace `src` with the path to your JS asset responsible for rendering.

> Always use these shortcodes for images, videos, and embedded designs. This keeps assets portable, ensures they resolve correctly for each organization, and integrates properly with the Academy platform’s build and deployment flow.

## Local Development

To preview your content locally, run:

```bash
hugo server
```

- Open the local URL displayed in your terminal browser.
- Local preview uses plain styling; full Layer5 Cloud branding is applied on production.

## Deploying & Going Live

1. **Commit and push** your changes to a branch or `main`.
2. **Contact Layer5** via [Slack](https://slack.layer5.io/), email, or by opening a GitHub issue.
3. Provide your repository URL.
4. Once reviewed, a Layer5 admin will synchronize your content to the [Layer5 Cloud Academy](https://cloud.layer5.io/academy/overview).

## Contributing

- See [Academy Docs](https://docs.layer5.io/cloud/academy) for best practices on creating and publishing learning paths, challenges and certifications.
- Refer to [CONTRIBUTING.md](./CONTRIBUTING.md) for branching, committing, and PR workflow.
- Review [CODE_OF_CONDUCT.md](./CODE_OF_CONDUCT.md) and [SECURITY.md](./SECURITY.md) prior to contributing.

## Site Framework

- **Stack:** Built with [Golang](https://golang.org/) and [Hugo](https://gohugo.io/), fully integrated with [Layer5 Cloud](https://cloud.layer5.io/academy/overview).
- **Theme & Template:** Refer to [academy-theme](https://github.com/layer5io/academy-theme) and [academy-template](https://github.com/layer5io/academy-template) for advanced customization.

## License

Distributed under the [Apache 2.0 License](./LICENSE).

For questions or help, open a [GitHub Issue](https://github.com/layer5io/exoscale-academy/issues) or join the [Layer5 Slack Community](https://slack.layer5.io/).

**Happy Learning!**
_The Layer5 & Exoscale Academy Team_
