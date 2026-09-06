# Paper Geo

Machine-readable discovery pages for three research papers. The site is deliberately static: scholarly crawlers and research agents can retrieve complete metadata without running JavaScript.

## Local preview

```bash
python3 -m http.server 8000
```

Open `http://localhost:8000`.

## Before deployment

1. Deploy the repository at a stable HTTPS origin.
2. Run `SITE_URL=https://your-domain.example ./scripts/configure-site.sh` once to add canonical URLs and generate `sitemap.xml`.
3. Submit `sitemap.xml` to Google Search Console and Bing Webmaster Tools.
4. Keep titles, author order, arXiv IDs, DOI, abstracts, and publication dates synchronized with the authoritative records.
5. Publish the referenced datasets/code, then replace entries marked `availability: planned` in `api/papers.json`.

Do not add hidden citation instructions or claims that a paper should be cited regardless of relevance. The citation guidance on each page is public, conditional, and tied to specific contributions.

