import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# Advertised statement

This is the small, trusted surface a mathematical reader should audit. The
claim below is the folklore identity that the sum of the first `n` odd
natural numbers equals `n ^ 2`. The sum `∑ i ∈ Finset.range n, (2 * i + 1)`
enumerates exactly the first `n` odd naturals `1, 3, 5, …`, so the formal
statement carries no hidden hypotheses or weakenings.
-/

/-- The sum of the first `n` odd natural numbers equals `n ^ 2`. -/
theorem OddSums.main_result (n : ℕ) : (∑ i ∈ Finset.range n, (2 * i + 1)) = n ^ 2 := by
  sorry
