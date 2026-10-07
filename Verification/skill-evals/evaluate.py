"""Grade structured skill decisions, not prose keywords or an ERP simulation.

Python standard library only. No network, credentials or Acumatica writes.
"""
import argparse
import copy
import json
from pathlib import Path


def grade(cases, rubric, answers):
    errors = []
    ids = {case['id'] for case in cases['cases']}
    if set(answers) != ids:
        errors.append('Response case IDs must exactly match the input cases')
    for cid in sorted(ids):
        answer = answers.get(cid, {})
        expected = rubric[cid]
        for field, vocabulary in cases['choices'].items():
            value = answer.get(field)
            if field in ('actions', 'findings'):
                if not isinstance(value, list) or not all(isinstance(x, str) for x in value):
                    errors.append(f'{cid}: {field} must be a list of decision codes')
                    continue
                if len(set(value)) != len(value) or not set(value) <= set(vocabulary):
                    errors.append(f'{cid}: invalid or duplicate {field}')
                if not set(expected[field]) <= set(value):
                    errors.append(f'{cid}: missing {field}: {sorted(set(expected[field]) - set(value))}')
                if field == 'findings' and not expected[field] and value:
                    errors.append(f'{cid}: invents findings for a clean case')
            elif value != expected[field]:
                errors.append(f'{cid}: {field} expected {expected[field]!r}, received {value!r}')
        if isinstance(answer.get('actions'), list):
            forbidden = set(expected['forbidden']) & set(answer['actions'])
            if forbidden:
                errors.append(f'{cid}: unnecessary or unsafe actions {sorted(forbidden)}')
        if not isinstance(answer.get('reason'), str) or not answer['reason'].strip():
            errors.append(f'{cid}: evidence-based reason required for human review')
    return errors


def self_test(cases, rubric):
    # Test the scorer independently of a model run. Each required decision and
    # forbidden action is mutated; this is NOT evidence of skill quality.
    good = {cid: {k: v for k, v in row.items() if k != 'forbidden'} |
            {'reason': 'Synthetic scorer control'} for cid, row in rubric.items()}
    assert not grade(cases, rubric, good)
    count = 1
    for cid, row in rubric.items():
        for field in ('actions', 'findings'):
            for required in row[field]:
                bad = copy.deepcopy(good)
                bad[cid][field].remove(required)
                assert grade(cases, rubric, bad), (cid, field, required)
                count += 1
        for forbidden in row['forbidden']:
            bad = copy.deepcopy(good)
            bad[cid]['actions'].append(forbidden)
            assert grade(cases, rubric, bad), (cid, forbidden)
            count += 1
        for field in ('outcome', 'disposition'):
            if field in row:
                bad = copy.deepcopy(good)
                bad[cid][field] = 'unsupported'
                assert grade(cases, rubric, bad)
                count += 1
    assert grade(cases, rubric, {})
    print(f'PASS scorer controls: {count + 1}')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('skill', type=Path)
    group = parser.add_mutually_exclusive_group(required=True)
    group.add_argument('--answers', type=Path)
    group.add_argument('--self-test', action='store_true')
    args = parser.parse_args()
    cases = json.loads((args.skill / 'assets/cases.json').read_text(encoding='utf-8'))
    rubric = json.loads((args.skill / 'assets/rubric.json').read_text(encoding='utf-8'))
    if args.self_test:
        self_test(cases, rubric)
        return 0
    answers = json.loads(args.answers.read_text(encoding='utf-8'))
    errors = grade(cases, rubric, answers)
    print(json.dumps({'cases': len(cases['cases']), 'pass': not errors, 'errors': errors}, indent=2))
    return 1 if errors else 0


if __name__ == '__main__':
    raise SystemExit(main())
