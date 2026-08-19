# OddSums

Lean 4 formal verification of the folklore identity: the sum of the first
`n` odd natural numbers equals `n ^ 2`. Structured for submission to the
[Palomar registry](https://palomar-registry.org/) via the form at
<https://submit.palomar-registry.org/>.

## The claim

```lean
theorem OddSums.main_result (n : ℕ) : (∑ i ∈ Finset.range n, (2 * i + 1)) = n ^ 2
```

`∑ i ∈ Finset.range n, (2 * i + 1)` enumerates exactly the first `n` odd
naturals `1, 3, 5, …`, so the formal statement matches the informal claim
with no hidden hypotheses. The proof is by induction on `n`
(`Finset.sum_range_succ` + `ring`).

## Repository map

- `Challenge.lean` — the small human-auditable statement surface (one deliberate `sorry`).
- `Solution.lean` — re-states the same declaration and closes it with the library proof.
- `OddSums/` — the proof development (`sum_range_odd_eq_sq`).
- `comparator.json` — Comparator configuration: statement/axiom check of Solution against Challenge.
- `formalization.yaml` — public result description, provenance, authorship, automation, fidelity, review.
- `scripts/verify-comparator.sh` — pinned Comparator + lean4export + NanoDa + Landrun verification.
- `docbuild/` — nested doc-gen4 project.

## Requirements

- Lean toolchain pinned in `lean-toolchain` (via elan)
- Mathlib dependency pinned in `lakefile.toml` / `lake-manifest.json`

## Build and verify

```bash
lake exe cache get
lake build
ruby scripts/validate-formalization.rb
./scripts/verify-comparator.sh
```

CI builds the project with `lean-action`, validates `formalization.yaml`,
checks the advertised statement with Comparator, and builds doc-gen4 API
documentation on every push.

## License

Apache-2.0, see `LICENSE`.
