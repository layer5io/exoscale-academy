---
title: Local Video
linkTitle: Local Video

description: Render the academy-theme local-video shortcode.
draft: true
---

The `local-video` shortcode embeds an HTML5 `<video>` player for a locally hosted video file.

```text
{{</* local-video src="/path/to/video.mp4" muted="true" autoplay="true" loop="true" */>}}
```

**Parameters:**

| Parameter | Description | Default |
|-----------|-------------|---------|
| `src` | Path to the video file | _(required)_ |
| `muted` | Mute the video | `false` |
| `autoplay` | Auto-play the video | `false` |
| `loop` | Loop playback | `false` |

{{< alert type="info" title="Sample video not included" >}}
This shortcode requires a locally hosted `.mp4` video file. Add your video to `static/examples/` and update the `src` path.
{{< /alert >}}
