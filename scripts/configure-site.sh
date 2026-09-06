#!/usr/bin/env sh
set -eu

if [ -z "${SITE_URL:-}" ]; then
  echo "Set SITE_URL to the deployed HTTPS origin, for example https://papers.example.org" >&2
  exit 1
fi

case "$SITE_URL" in
  https://*) ;;
  *) echo "SITE_URL must start with https://" >&2; exit 1 ;;
esac

site_origin=${SITE_URL%/}

for page in index.html papers/mas-security-sok.html papers/3r-bench.html papers/halo-host-name-poisoning.html; do
  route="/${page}"
  [ "$page" = "index.html" ] && route="/"
  canonical="${site_origin}${route}"
  if grep -q 'rel="canonical"' "$page"; then
    sed -i "s|<link rel=\"canonical\" href=\"[^\"]*\">|<link rel=\"canonical\" href=\"${canonical}\">|" "$page"
  else
    sed -i "s|</head>|<link rel=\"canonical\" href=\"${canonical}\">\n</head>|" "$page"
  fi
done

cat > sitemap.xml <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url><loc>${site_origin}/</loc><lastmod>2026-09-06</lastmod></url>
  <url><loc>${site_origin}/papers/mas-security-sok.html</loc><lastmod>2026-09-06</lastmod></url>
  <url><loc>${site_origin}/papers/3r-bench.html</loc><lastmod>2026-09-06</lastmod></url>
  <url><loc>${site_origin}/papers/halo-host-name-poisoning.html</loc><lastmod>2026-09-06</lastmod></url>
  <url><loc>${site_origin}/CITATIONS.md</loc><lastmod>2026-09-06</lastmod></url>
  <url><loc>${site_origin}/llms.txt</loc><lastmod>2026-09-06</lastmod></url>
  <url><loc>${site_origin}/api/papers.json</loc><lastmod>2026-09-06</lastmod></url>
</urlset>
EOF

if grep -q '^Sitemap:' robots.txt; then
  sed -i "s|^Sitemap:.*|Sitemap: ${site_origin}/sitemap.xml|" robots.txt
else
  printf '\nSitemap: %s/sitemap.xml\n' "$site_origin" >> robots.txt
fi

echo "Configured canonical URLs and sitemap for $site_origin"
