# Evaluate the skill

These independently invented fixtures evaluate an agent's decisions from supplied
evidence. They do not compile a screen or certify Acumatica runtime behavior.
No tenant, package import or device is required. Fixtures and scorer are original
contributions under the repository license.

Give a fresh evaluator this skill, its operational references and
[cases.json](../assets/cases.json). Withhold [rubric.json](../assets/rubric.json)
and any previous review or dogfood conclusions until its answers are frozen.

Ask it to perform each request using the supplied evidence, returning an object
keyed by case ID. Each answer contains `disposition`, `outcome`, `findings`,
`actions` using the choices in the input, plus a short evidence-based `reason`.
Codes are a scoring vocabulary, not an ordered plan or hints to select all checks.
Additional prose can explain concrete implementation and acceptance work.

From the repository root, run:

```console
python Verification/skill-evals/evaluate.py DEV/skills/acumatica-classic-to-modern-ui-conversion --self-test
python Verification/skill-evals/evaluate.py DEV/skills/acumatica-classic-to-modern-ui-conversion --answers /path/to/answers.json
```

The scorer checks dispositions, required findings/actions and prohibited work.
Self-test mutates each required decision and injects forbidden actions; it tests
the scorer only. Review the evaluator's reasons and actual proposed work too:
codes alone cannot prove good judgment or prose quality. Cases include a real
custom-conversion request, native GI routing, existing Modern preservation,
scanner/row/callback failures, a positive read-only console with unavailable
witnesses, retirement dependencies, temporary Classic and conflicting source.
