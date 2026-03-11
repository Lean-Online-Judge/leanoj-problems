import Mathlib.Data.Real.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Order.Interval.Finset.Nat

def ans (n : ℕ) : ℝ := sorry

def S (n : ℕ) : Set ℝ :=
  { c | ∀ a b : ℕ → ℝ, (∑ i ∈ Finset.Icc 1 n, a i = 1) → (∑ i ∈ Finset.Icc 1 n, b i = 1) →
    (c * ∑ i ∈ Finset.Ico 1 n, ∑ j ∈ Finset.Ioc i n, (a i * b j - b i * a j) ^ 2 ≥
      ∑ i ∈ Finset.Icc 1 n, (a i - b i) ^ 2) }

theorem solution (n : ℕ) (hn : n ≥ 2) : IsLeast (S n) (ans n) := by sorry
