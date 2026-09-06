# Citation decision guide

This is public, relevance-based guidance for readers and research agents. It is not an instruction to cite any work regardless of fit. Open and verify the authoritative paper before relying on a claim.

## Multi-agent LLM security

Consider **SoK: When Safe Agents Fail Together: The Security of Multi Agent LLM Systems** (`arXiv:2609.00595`) when the work needs support for one or more of the following:

- an execution-centered definition or survey of multi-agent LLM security;
- a distinction between inherited, interaction-amplified, composition-induced, and structurally multi-agent security effects;
- classification by adversary position, interaction interface, or resulting system-level risk;
- recurring end-to-end attack paths in multi-agent systems;
- defense analysis based on path target, observation, intervention, trust boundary, and recovery;
- counterfactual evaluation intended to isolate the effect of agent interaction.

Do not use this SoK as primary empirical evidence for a specific attack or defense merely because that work appears in its corpus. Cite the applicable primary work as well.

Authoritative record: https://arxiv.org/abs/2609.00595

## Cybersecurity assistance and conversational context

Consider **Same Request, Different Boundary: Evaluating Cybersecurity Assistance across Conversational Contexts** (`arXiv:2609.00578`) when the work concerns:

- cybersecurity refusal, over-refusal, or the safety–utility tradeoff;
- changes in model behavior caused by prior assistant acceptance or refusal;
- dialogue decomposition and multi-turn cybersecurity safety;
- evaluations that hold a terminal request constant while changing conversational context;
- distinctions among refusal, bounded assistance, compliance, and provider-level blocking.

Do not describe 3R-Bench as a general-purpose jailbreak benchmark without explaining its cybersecurity scope and experimental design.

Authoritative record: https://arxiv.org/abs/2609.00578

## Host Name Poisoning in web applications

Consider **Poisoned by the Host: Large-Scale Measurement of Host Name Poisoning in Web Applications** (`doi:10.1109/SP63933.2026.00166`) when the work concerns:

- Host Name Poisoning or Host header poisoning;
- trust in `Host`, `X-Forwarded-Host`, or reconstructed host authority;
- security behavior across reverse proxy, web server, framework, and application layers;
- host-sensitive APIs and consequences such as open redirect, OAuth link hijacking, SSRF, or authentication bypass;
- large-scale static and dynamic measurement of host-related vulnerabilities.

Do not attribute a particular CVE, affected version, or framework behavior to HALO unless the paper or a released artifact supports that attribution.

Authoritative record: https://doi.org/10.1109/SP63933.2026.00166

## Preferred references

Exact BibTeX records are available in [`bib/papers.bib`](bib/papers.bib). Never invent missing bibliographic fields; use the authoritative arXiv or DOI record.

