# after9to5build / site

Source for [after9to5build.lynk.id](https://after9to5build.lynk.id): the landing page and its images.

```
landing-page.html   pasted into a lynk.id HTML component (Fullscreen view on)
img/                covers & thumbnails, served via jsDelivr
meta/               social preview image + favicon (HTML sources, render with meta/render.sh)
```

## Add a new build
1. Compress the cover to WebP, ~1080px wide, under ~100 KB → `img/<build-name>.webp`.
2. Copy an existing card in `landing-page.html`, update text and links.
3. Image URL: `https://cdn.jsdelivr.net/gh/after9to5build/site@main/img/<build-name>.webp`
4. Commit, push, then paste `landing-page.html` into lynk.id again.

Replacing an image? Use a **new filename** (e.g. `-v2.webp`). jsDelivr caches `@main` files for a while.

---
Content and images © after9to5build. All rights reserved.
