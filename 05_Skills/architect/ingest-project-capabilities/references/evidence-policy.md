# Evidence and Maturity Policy

## Evidence classes

- Current fact: directly observable in the current source scope.
- Inference: an architectural interpretation supported by facts.
- Recommendation: a proposed target shape.
- External claim: a statement about another project not verified in the current source.

## Maturity axes

```text
implementation: concept -> documented -> implemented -> tested -> operated
transfer:       single_project -> compared -> cross_project_validated -> reference_ready
```

Do not transfer maturity between scopes. A mechanism tested in one project may remain documented or concept-only in another.

## Minimum evidence

- `implemented`: a current artifact directly instantiates the capability.
- `tested`: reproducible tests or checks verify behavior in the current scope.
- `operated`: dated run evidence demonstrates real operation under declared boundaries.
- `cross_project_validated`: a structurally different second project independently exercises the mechanism.
- `reference_ready`: stable contract plus conformance evidence exists.

## Required boundaries

- Design does not equal implementation.
- Test success does not equal business effectiveness.
- Review success does not grant write or promotion.
- A project export is an interpretation layer, not the project source of truth.
