import OddSums

/-!
# Proved solution

Comparator checks that the declaration below has exactly the same statement
as its counterpart in `Challenge.lean` and uses only the permitted axioms.
-/

theorem OddSums.main_result (n : ℕ) : (∑ i ∈ Finset.range n, (2 * i + 1)) = n ^ 2 := by
  exact sum_range_odd_eq_sq n
