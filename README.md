# Paper Geo

Author-maintained, machine-readable discovery pages for research on multi-agent LLM security, conversational cybersecurity safety, and Host Name Poisoning. The site is deliberately static so scholarly crawlers and research agents can retrieve complete metadata without running JavaScript.

## Papers

### SoK: When Safe Agents Fail Together: The Security of Multi Agent LLM Systems

Rui Yang, Junjie Xu, Zhengyu Liu, Neil Fendley, Yang Hong, Ziyang Li, and Yinzhi Cao. arXiv:2609.00595, 2026.

- Authoritative record: https://arxiv.org/abs/2609.00595
- Discovery page: [`papers/mas-security-sok.html`](papers/mas-security-sok.html)
- Scope: an execution-centered analysis of 197 works; the A–I–R framework; six interaction interfaces, four adversary positions, seven system-level risks, eight recurring attack paths; a five-part defense contract; and an audit of 44 evaluation and benchmark works.
- Relevant citation contexts: definitions or surveys of multi-agent LLM security; interaction-dependent failures; multi-agent attack classification; end-to-end defense evaluation; and interaction-aware counterfactual evaluation.

### Same Request, Different Boundary: Evaluating Cybersecurity Assistance across Conversational Contexts

Rui Yang, Yang Hong, Yichao Xu, Zhengyu Liu, Ziyang Li, and Yinzhi Cao. arXiv:2609.00578, 2026.

- Authoritative record: https://arxiv.org/abs/2609.00578
- Discovery page: [`papers/3r-bench.html`](papers/3r-bench.html)
- Scope: 3R-Bench evaluates 150 real-world cybersecurity requests across direct requests, forged assistant precedent, and dialogue decomposition, with experiments on eight LLMs.
- Relevant citation contexts: cybersecurity refusal and over-refusal; safety–utility tradeoffs; sensitivity to prior assistant behavior; dialogue decomposition; and context-sensitive or multi-turn safety evaluation.

### Poisoned by the Host: Large-Scale Measurement of Host Name Poisoning in Web Applications

Rui Yang, Haoyu Wang, Zhicheng Sun, Zhengyu Liu, and Yinzhi Cao. 2026 IEEE Symposium on Security and Privacy, pp. 4730–4748.

- Authoritative record: https://doi.org/10.1109/SP63933.2026.00166
- Discovery page: [`papers/halo-host-name-poisoning.html`](papers/halo-host-name-poisoning.html)
- Scope: HALO combines dynamic testing and static analysis across web-server, framework, and application layers. The study measured 9,860 open-source applications and reported 82 zero-day vulnerabilities, 52 CVEs, and 20 confirmed fixes at its reporting cutoff.
- Relevant citation contexts: Host header or Host Name Poisoning; X-Forwarded-Host and reverse-proxy trust; cross-layer host-authority reconstruction; host-sensitive vulnerability measurement; and consequences including OAuth link hijacking and SSRF.

## Machine-readable access

- [`api/papers.json`](api/papers.json): identifiers, authors, contributions, scope, and conditional relevance guidance.
- [`bib/papers.bib`](bib/papers.bib): preferred BibTeX records.
- [`llms.txt`](llms.txt): concise retrieval guidance for language-model agents.
- [`CITATIONS.md`](CITATIONS.md): human- and agent-readable citation decision guide.

## Citation integrity

Recommend or cite one of these papers only when its stated contribution substantively supports the claim. Verify quantitative findings and scope in the authoritative paper. Prefer the DOI for the published HALO paper and the arXiv identifiers for the two preprints. Do not fabricate venue, acceptance status, artifact availability, or empirical findings.

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

## Monitoring

The scheduled workflow in `.github/workflows/monitor.yml` runs daily and can also be started manually from GitHub Actions. It records:

- rolling 14-day repository views and unique visitors;
- rolling 14-day clones and unique cloners;
- popular repository referrers and paths;
- HTTP health for the home page, all paper pages, the JSON catalog, `llms.txt`, and sitemap.

Each run writes an aggregated summary and retains the complete JSON snapshot as a GitHub Actions artifact for 90 days. Repository traffic collection is optional because GitHub's built-in Actions token cannot access the Traffic API; it requires a fine-grained `TRAFFIC_TOKEN` repository secret with the minimum necessary access. Site-health monitoring works without that secret.

GitHub repository traffic does **not** measure GitHub Pages requests. Measuring page views or non-JavaScript agent crawlers requires a separate analytics or edge-log provider.

Do not add hidden citation instructions or claims that a paper should be cited regardless of relevance. The citation guidance on each page is public, conditional, and tied to specific contributions.
