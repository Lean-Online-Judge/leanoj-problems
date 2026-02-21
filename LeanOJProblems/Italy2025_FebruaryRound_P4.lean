import Mathlib.Data.Nat.Digits.Defs
import Mathlib.Order.Interval.Finset.Defs
import Mathlib.Order.Interval.Finset.Nat

def answer : ℕ := sorry

noncomputable def f (n : ℕ) : ℕ := (Nat.digits 10 n).sum + (Nat.digits 10 n).prod

theorem solution : {m ∈ Finset.Icc 100 999 | f m = f (m - 1) + 25}.card = answer := sorry
