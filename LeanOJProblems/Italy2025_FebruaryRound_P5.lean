import Mathlib.NumberTheory.PrimeCounting

open Nat.Prime

def answer : ℤ := sorry

noncomputable def f (n : ℕ) : ℤ := if Even n then π n else n - π n

theorem solution : ∑ i ∈ Finset.range 100, f i.succ = answer := sorry
