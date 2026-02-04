import Mathlib.Data.Finset.Basic
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Analysis.SpecialFunctions.Log.Base

def is_link (n : ℕ) (e : ℕ × ℕ) : Prop := 1 ≤ e.1 ∧ e.1 < e.2 ∧ e.2 ≤ n
def one_jump (L : Finset (ℕ × ℕ)) (i j : ℕ) : Prop := (i, j) ∈ L
def two_jump (L : Finset (ℕ × ℕ)) (i j : ℕ) : Prop := ∃ k, (i, k) ∈ L ∧ (k, j) ∈ L
def three_jump (L : Finset (ℕ × ℕ)) (i j : ℕ) : Prop :=
    ∃ k₁ k₂, (i, k₁) ∈ L ∧ (k₁, k₂) ∈ L ∧ (k₂, j) ∈ L

theorem solution (n : ℕ) (hn : n ≥ 2) : ∃ L : Finset (ℕ × ℕ),
    (∀ e ∈ L, is_link n e) ∧
    (∀ i ∈ Finset.Icc 1 (n - 1), (i, i + 1) ∈ L) ∧
    (L.card ≤ n - 1 + 3 * (n - 1) * (Real.logb 2 (Real.logb 2 n))) ∧
    (∀ i ∈ Finset.Icc 1 n, ∀ j ∈ Finset.Icc 1 n, i < j →
      one_jump L i j ∨ two_jump L i j ∨ three_jump L i j) := sorry
