import Mathlib

/-!
# Supporting proof development

Proof of the advertised statement by induction on `n`, using
`Finset.sum_range_succ` to peel off the last summand and `ring` to close the
resulting arithmetic identity `n ^ 2 + (2 * n + 1) = (n + 1) ^ 2`.
-/

namespace OddSums

/-- The sum of the first `n` odd natural numbers equals `n ^ 2`. -/
theorem sum_range_odd_eq_sq (n : ℕ) : (∑ i ∈ Finset.range n, (2 * i + 1)) = n ^ 2 := by
  induction n with
  | zero => simp
  | succ n ih => rw [Finset.sum_range_succ, ih]; ring

end OddSums
