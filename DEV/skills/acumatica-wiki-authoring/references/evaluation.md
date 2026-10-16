# Evaluate the skill

These original synthetic fixtures exercise Help evidence decisions, not a mock
Wiki renderer or an Acumatica runtime. They need only Python's standard library
and an independent evaluator, without credentials or publication authority.

Give the evaluator this skill, its operational references and
[cases.json](../assets/cases.json). Withhold [rubric.json](../assets/rubric.json),
prior reviews and dogfood conclusions until its answers are frozen.

For each request, return a JSON object keyed by case ID. Each answer has
`work_required`, `verification_status`, `findings`, `actions` from the supplied choices and an evidence-based
`reason`. Extra prose can explain the specific repair and remaining witness.

Classify two independent dimensions using the definitions in cases.json:

- `work_required`: `none` when no defect requiring content, mapping, ownership or
  rights changes is established; `repair` when such a defect exists, including a
  missing article that must be created. Missing evidence alone does not prove a defect.
- `verification_status`: `complete` when all applicable current witnesses are
  available, including witnesses that show a failure; `pending` when an applicable
  witness is unavailable or has not been obtained. An older witness cannot close a
  current unavailable check. Classify the supplied evidence before proposed repairs,
  not hypothetical evidence after future work.

Neither field alone means acceptance. Acceptance requires `none` and `complete`.
For example, a known defect can require repair while reader verification is pending.
An otherwise correct article can also need no edit while its reader check is pending.
Historical answer files using `outcome` retain their original schema and results;
use a fresh evaluation for this schema rather than rewriting those answers.

Run from the repository root:

```console
python Verification/skill-evals/evaluate.py DEV/skills/acumatica-wiki-authoring --self-test
python Verification/skill-evals/evaluate.py DEV/skills/acumatica-wiki-authoring --answers /path/to/answers.json
```

The scorer checks required decisions and rejects prohibited actions. Its mutation
self-test tests the scorer, not skill effectiveness. Independently inspect the
reasons for invented proof, irrelevant gates and whether source work continues.
Cases include valid contextual Help, zero/wrong identity despite HTTP success,
reader denial despite Administrator success, editor changes reverted by package
publication, missing package-owned articles with unavailable runtime access,
native Help preservation and stale content/links, an unchanged refresh that
survives normal republish, and standalone editor-owned content with no form or
package, plus an otherwise correct standalone article with an unavailable reader
witness. A model pass does not replace site acceptance.
