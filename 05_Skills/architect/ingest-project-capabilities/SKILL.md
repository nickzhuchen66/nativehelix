---
name: ingest-project-capabilities
description: Extract, compare, and baseline reusable technical AI-native capabilities from a repository, document set, article collection, or project export. Use when Codex is asked to absorb technical material, identify architecture patterns, update the shared capability registry with Architect-owned evidence, create evidence-backed project profiles, or compare a new source with existing technical capabilities.
---

# Ingest Project Capabilities

Create an evidence-preserving capability intake. Do not treat summaries, target designs, or external claims as current implementation facts.

## Workflow

1. Identify the source type: repository, project export, article, paper, or mixed package.
2. Inventory current artifacts and locate source precedence, architecture, build history, tests, runtime evidence, and explicit limitations.
3. Preserve the input as a dated snapshot after checking secrets and unnecessary sensitive data. Use an operating-system temporary directory for transient exports.
4. Separate every important conclusion into current fact, inference, recommendation, or external claim.
5. Extract mechanisms, not project vocabulary. Keep domain ontology, business data, concrete people, model brands, and project paths in the project profile or Host Adapter.
6. Map candidates to `04_Capabilities/INDEX.md` and the relevant `technical`, `product`, or `cross_functional` domain. Route product findings to the product owner instead of silently productizing them.
7. Assign capability class, one primary owner, consulted roles, implementation maturity and transfer maturity. Never inherit tested status across repositories.
8. Compare overlaps, conflicts, semantic drift, reverse contributions, and unresolved questions.
9. Produce an ingestion report, source-scoped project profile, capability manifest, crosswalk, and promotion candidates in a user-approved output directory. Do not write into NativeHelix itself unless explicitly requested.
10. Verify file counts, references, YAML, checksums, and the absence of silent source mutation.

## Required Discipline

- Preserve evidence scope.
- Record negative findings and design-only boundaries.
- Keep `reviewed`, `written`, `landed`, `verified`, `approved`, and `promoted` distinct.
- Treat multiple same-source summaries as one source.
- Do not copy secrets, production data, private expert content, or unnecessary domain datasets.
- Do not modify the source project unless the user explicitly requests it.
- Do not decide product priority, investment, user value, product acceptance, or product-capability promotion.

## Resources

- Read `references/evidence-policy.md` before assigning maturity.
- Read `references/capability-routing.md` when mapping extracted material.
- Use `assets/ingestion-report-template.md` and `assets/capability-manifest-template.yaml` as output skeletons.
- Run `ruby scripts/validate_capability_manifest.rb <manifest.yaml>` after creating a manifest.
