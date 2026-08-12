# NativeHelix
> Public preview — an open conceptual guide to AI-native product design and architecture.
© 2026 CZ. NativeHelix documentation is licensed under CC BY 4.0. Attribution: CZ. See [LICENSE](LICENSE).

NativeHelix is a practical way to think about AI-native product design and AI-native architecture together. It gives product leaders and architects a shared language for discussing value, autonomy, authority, evidence and operational boundaries before implementation begins.

Its central idea is simple: product direction and system design are distinct decision tracks, but they must evolve together. Product leadership defines why a product should exist and what outcome it should create. Architecture leadership defines how a system could pursue that outcome within explicit technical and operational limits. Neither track should silently make decisions that belong to the other.

NativeHelix is intended for early design conversations about agentic systems. It does not prescribe a technology stack or replace the work required to discover, build, evaluate and operate a real product.

## Why AI-native teams need a shared product–architecture language

Teams often use the words feature, automation and agent interchangeably. That ambiguity becomes costly when a system can interpret information, choose a next step or cause an external effect.

A feature usually provides a defined function within a product. An automation applies established rules to trigger an action. An agent product may interpret context, coordinate several steps, select tools and adapt its behavior as work unfolds. These forms can overlap, but they create different questions about user expectations, system state and human control.

Without shared language, product intent can become embedded accidentally in technical choices. A developer may infer who the user is from the available data. An architect may define acceptable behavior through permissions alone. A product leader may promise autonomy without specifying how failures, costs or irreversible effects should be handled.

NativeHelix frames these as joint design concerns:

- What valuable outcome is being pursued, for whom?
- Which decisions belong to the person, the product team and the system?
- What may the agent observe, infer, recommend or change?
- What evidence supports its outputs?
- How can a person understand progress, intervene and recover?
- What would cause the work to stop?

These questions can support an AI product operating model, but they do not constitute one by themselves. Organizations still need their own roles, governance, engineering practices and operating procedures.

## The helix: two decision tracks, one product

The helix represents two connected tracks that repeatedly inform one another.

The product track owns intended users, the problem to solve, the proposed value, priority, scope and acceptance. Product leadership determines whether the outcome matters and what would count as useful enough to continue.

The architecture track owns system shape, interfaces, state, permissions, resilience and technical risk. Architecture leadership determines how the system could behave, what dependencies it would have and where its boundaries must be enforced.

The tracks are connected because neither can develop sensibly in isolation. A product request for unattended action changes the permission, recovery and observability design. An architectural finding that required data is unreliable may narrow the product promise or change the acceptance criteria.

Connection does not erase ownership. An architecture diagram should not quietly redefine the user problem. A product requirement should not silently determine that broad data access or irreversible action is technically acceptable. When one track encounters a constraint that affects the other, it should return that constraint as a decision, not absorb it as an assumption.

This pattern is iterative. The two tracks meet at explicit decision points, update their own artifacts and continue with a clearer shared boundary.

## Design the agent experience

Autonomy is part of the user experience, not merely a model setting.

For an agent product, the design must explain what the agent may do and what the person remains responsible for doing. It must also show how the relationship changes while work is underway.

A bounded agent experience answers questions such as:

- What information can the agent inspect?
- Which actions can it take without confirmation?
- Which actions always require approval?
- How are assumptions, uncertainty and missing information shown?
- How can the person see current progress?
- What happens when a tool fails or a dependency is unavailable?
- Can the person pause, redirect, cancel or take over?
- What remains recoverable after an action occurs?

Human-in-the-loop should mean more than placing an approval button at the end. The person needs enough context, time and control to make the intervention meaningful. Confirmation that hides the proposed effect, its destination or its consequences is weak control.

Autonomy can also vary by stage. A system might gather information freely, draft within stated limits and require approval before producing an outward effect. The appropriate boundary depends on product value, technical risk and the authority granted by the user or organization.

## Bound the product before building

Implementation should begin from a bounded outcome rather than a broad ambition to add an agent.

The initial product boundary should define:

- the intended user;
- the problem the user is trying to solve;
- the desired outcome;
- what the product will not do;
- the evidence that would indicate success;
- the conditions under which work should stop.

Exclusions are especially important. They prevent a useful idea from expanding into implied authority. A product that prepares a recommendation is different from one that acts on it. A product that summarizes provided material is different from one that searches unrestricted sources.

Acceptance should describe observable product behavior and user value without pretending that early criteria prove broad outcomes. A successful prototype interaction may support further exploration. It does not, by itself, establish reliability across environments or justify deployment.

Stop conditions should cover more than technical failure. Work may need to stop when required information is absent, confidence is insufficient, cost exceeds a limit, authority is unclear or the requested action crosses the agreed scope.

Once the boundary is stable enough to test, architecture can respond to product intent rather than inventing it from implementation details.

## A conceptual AI-native system map

NativeHelix separates an AI-native system into conceptual responsibilities. These responsibilities may be implemented together or separately. The map is meant to clarify design ownership, not prescribe components.

**Context for reasoning** supplies the information needed to interpret the task. It includes user instructions, relevant source material, constraints and the current situation.

**Coordination of work** decides how a goal becomes steps, how those steps are ordered and when the system should ask for help or stop.

**Controlled tool effects** connect reasoning to actions such as retrieving information, changing a record or communicating externally. Access and effects should be deliberately constrained.

**Evaluation** examines whether an output or action is supported, relevant and within the intended boundary. Evaluation may occur during work as well as before completion.

**Supporting evidence** preserves the basis for important statements and decisions. It helps a person distinguish what was observed from what was inferred.

**Durable memory** retains information across interactions when continuity is genuinely needed. Its scope, update rules and authority should be explicit.

**Operational control** manages permissions, budgets, checkpoints, cancellation, monitoring, takeover and recovery.

Separating these responsibilities makes hidden coupling easier to discuss. For instance, reasoning ability does not automatically grant tool access, and durable memory does not automatically make stored information authoritative.

## Choose Task, Skill, Workflow or Capability

Not every request should become a workflow or an autonomous agent. NativeHelix uses four routing concepts to help teams choose an appropriate form.

A **Task** is bounded, one-off work with a clear requested result. It is appropriate when the work does not need a reusable operating structure.

A **Skill** is a repeatable atomic practice. It packages a focused way of performing a particular kind of work consistently.

A **Workflow** is multi-stage work that involves authority, state, handoffs or side effects. It requires explicit transitions, checkpoints and responsibility across stages.

A **Capability** is reusable knowledge or competence that can support many tasks, skills or workflows.

These concepts are not a list of product features that every system must implement. They help route work to a form proportionate to its complexity. A request can begin as a Task and later reveal the need for a Workflow, but that change should be a deliberate design decision because it may introduce persistent state, broader authority or external effects.

## Evidence, review and approval

Agentic systems can produce fluent conclusions that obscure how those conclusions were formed. NativeHelix therefore distinguishes evidence types and their limits.

An **observation** records what was directly found in available material or system state. An **outside claim** comes from another source and retains that source’s scope and uncertainty. An **inference** is a conclusion drawn from observations or claims. A **recommendation** proposes what someone should do.

These categories should not be blended. Preserving where information came from, how current it is and what transformations were applied helps a reader judge the result. A source can support a specific statement without proving a broader conclusion.

Review and approval are also separate.

Review asks whether work is coherent, supported and fit for its stated purpose. Approval accepts business meaning, risk, cost and responsibility. A technically strong review must not silently authorize publication, spending, deployment or an irreversible action.

The reviewing role should state what was examined and what remains unknown. The approving role should understand the proposed effect and explicitly accept responsibility within its authority. In some settings one person may perform both roles, but the decisions should remain distinguishable.

## Human authority, limits and recovery

Authority belongs in the design from the beginning. It should not be added only after output quality appears promising.

Before autonomous action, a team should define:

- which identities and roles may request, review or approve work;
- what data and tools the agent may access;
- what actions are prohibited or confirmation-gated;
- cost, time and resource limits;
- checkpoints where work can be inspected;
- how cancellation and human takeover operate;
- what happens after partial completion or failure;
- which effects can be reversed and how recovery begins.

These boundaries must cover the entire path from request to effect. A well-written output is not sufficient if the system can send it to the wrong audience, overwrite important state or continue consuming resources after its purpose has disappeared.

Recovery should account for partial states. Cancellation may stop future actions without undoing earlier ones. Human takeover may require a clear account of completed steps, pending work and unresolved uncertainty. Meaningful control depends on that visibility.

## A synthetic walkthrough

**Fictional example: weekly project update assistant**

A generic team is considering an agent that helps prepare a weekly project update.

The product leader defines the reader as a project sponsor who needs a concise account of progress, risks and requested decisions. The desired outcome is a reviewable draft assembled from approved project material. The agent must not evaluate individual performance, invent status, contact stakeholders or publish the update. Acceptance requires that the draft covers the agreed reporting areas, identifies missing information and lets the responsible person revise it before use.

The architect defines access to a bounded set of project notes and status records. The agent keeps temporary state while assembling the draft but does not treat prior drafts as authoritative facts. It may read approved sources and create a private draft; it may not send messages or modify source records. Any outward communication requires explicit human approval.

During operation, the interface shows which sources have been checked, which section is being prepared and where information is missing. The person can pause, redirect or cancel the work. If retrieval fails, the agent preserves the unfinished draft, lists the missing inputs and returns control without attempting publication.

The draft separates observations found in project material from claims made by contributors. Any synthesis is labeled as an inference rather than presented as a recorded fact.

A reviewer checks whether the draft is supported, complete enough for its stated purpose and clear about uncertainty. Only after that review does the responsible business owner decide whether to approve the update for communication. Review improves the work; it does not grant permission to send it.

## What NativeHelix does not claim

NativeHelix is an exploratory conceptual primer. It is not a framework certification, production architecture, software package, security control, compliance method, validated playbook, standard, reference architecture or SDK.

It does not claim proven performance, adoption, security, privacy, safety, compliance or completeness. It does not establish that a proposed agent is useful, reliable or ready to operate.

The primer does not replace product discovery, engineering design, threat assessment, security work, legal review, organizational governance, accessibility work, operational planning or runtime validation. Its concepts may help teams ask clearer questions, but each system still requires evidence appropriate to its context and intended effects.

## How to use this primer

Use NativeHelix near the start of an AI-native initiative and revisit it when scope or authority changes.

Product and architecture leaders can first write down the intended outcome, exclusions, acceptance evidence and stop conditions. They can then identify the system responsibilities involved, choose whether the work is best treated as a Task, Skill, Workflow or Capability, and map the proposed agent experience from request through recovery.

The most useful result is not agreement on every implementation detail. It is explicit ownership of the decisions that matter: who defines value, who defines technical boundaries, what the agent may do, what evidence supports its outputs and who retains authority over consequential effects.

If those answers remain unclear, implementation should not be used to conceal the ambiguity. The two decision tracks should meet again, make the unresolved choices visible and narrow the product until both can proceed responsibly.
