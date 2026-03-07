import Mathlib.Data.Real.Basic
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Order.Interval.Finset.Nat

theorem solution (n : ℕ) (a b : ℕ → ℝ) (ha : ∑ i ∈ Finset.Icc 1 n, (a i) ^ 2 = 1) (hb : ∑ i ∈ Finset.Icc 1 n, (b i) ^ 2 = 1) (hab : ∑ i ∈ Finset.Icc 1 n, (a i)*(b i) = 0) : (∑ i ∈ Finset.Icc 1 n, a i) ^ 2 + (∑ i ∈ Finset.Icc 1 n, b i) ^ 2 ≤ n := sorry
