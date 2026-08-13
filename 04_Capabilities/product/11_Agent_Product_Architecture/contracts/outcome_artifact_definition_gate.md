# Outcome–Artifact Definition Gate

**Status:** candidate product capability  
**Owner:** AI-Native CPO or the applicable Project CPO  
**Consulted role:** AI-Native Architect  
**Final direction authority:** CZ or the applicable human product authority

## Purpose

Prevent a team from optimizing architecture, Workflow, review, implementation or release mechanics before it has agreed on what product will actually exist when the work is finished.

A product name, theme or broad intention is not a sufficient product boundary. Terms such as “project”, “platform”, “guide”, “toolkit”, “SDK”, “reference implementation” and “open-source release” imply materially different deliverables and user experiences. When more than one interpretation remains plausible, downstream work must stop and the human product authority must choose.

## Required outcome statement

Before architecture or implementation begins, the product owner must be able to complete this sentence without alternatives or placeholders:

> For **[specific user]**, we will deliver **[exact artifact or artifact set]**, enabling them to **[perform a concrete use]**, and we will know it works when **[observable acceptance evidence]**.

The statement must be accompanied by:

1. **User and situation** — who receives the product and in what context.
2. **Final outcome** — the change the user should be able to achieve.
3. **Artifact inventory** — the actual files, application, package, service, repository, interface or documentation set that will exist.
4. **Consumption path** — what the user will clone, install, run, import, configure, read or operate.
5. **Representative artifact view** — a proposed directory tree, screen map, API surface or equivalent concrete preview.
6. **Acceptance evidence** — observable proof at the product boundary, not merely completion of internal process steps.
7. **Non-goals and claim ceiling** — what will not be delivered or claimed.
8. **Distribution boundary** — what becomes public or reaches users, and what remains internal.

## Gate decision

The product owner records exactly one result:

- `PASS`: one artifact interpretation and one user consumption path are selected.
- `REVISE`: required fields are incomplete or inconsistent; product work may continue, but architecture, Workflow construction, implementation and release preparation may not start.
- `STOP_FOR_HUMAN_CHOICE`: two or more materially different outcomes remain plausible.
- `CANCEL`: the intended outcome is not worth pursuing.

Examples that require `STOP_FOR_HUMAN_CHOICE` include:

- concept guide versus reusable toolkit;
- documentation project versus executable software;
- internal operating workspace versus public distribution;
- starter templates versus SDK/runtime;
- demonstration repository versus production product.

## Downstream rule

Workflow and release design must consume the accepted artifact boundary; they may not silently redefine it. A change in artifact class, consumption path, target user or success evidence is a new product decision, not an editorial correction or technical de-scope.

Before a costly or multi-stage design begins, the CPO must show the human authority the representative final artifact view and ask:

> If we complete exactly this artifact set, will that satisfy the reason you asked for the product?

An affirmative answer is required. Approval of a process, plan or repository name does not substitute for approval of the intended final artifact.

## Failure signals

Stop and return to this Gate when:

- the team can explain the release process more clearly than the product users will receive;
- success is stated as “reviewed”, “published” or “workflow completed” rather than user capability;
- a repository is technically non-empty but lacks the assets users expected;
- repeated governance or architecture revisions do not improve the user-facing artifact;
- “de-scope” changes the product class rather than reducing scope within the accepted class;
- stakeholders use the same product name for different deliverables.

## Evidence and maturity

This Gate was derived from a failure mode in which process design advanced before the final user-facing artifact was agreed. That origin suggests value but does not establish cross-project validity. The capability remains a candidate until it is forward-tested on structurally different products.
