import Mathlib.Tactic
import Mathlib.Data.Set.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Order.Basic

def is_partition (n : ℕ) (S : ℕ → Set ℕ) : Prop :=
  (∀ i j : ℕ, i < n → j < n → i ≠ j → S i ∩ S j = ∅) ∧
  (∀ k : ℕ, k ≥ 1 → ∃ i : ℕ, i < n ∧ k ∈ S i) ∧
  (∀ i : ℕ, i < n → (S i).Nonempty)∧
  (∀ i : ℕ, i < n → ∀ k : ℕ, k ∈ (S i) → (k > 0))

def s_prop (n : ℕ) (S : ℕ → Set ℕ) : Prop :=
  ∀ (t : Finset ℕ), t.card = n - 1 →
  (∀ i ∈ t, i < n) →
  ∀ (f : ℕ → ℕ), (∀ i ∈ t, f i ∈ S i) →
  ∃ j : ℕ, j < n ∧ j ∉ t ∧ (∑ i ∈ t, f i) ∈ S j

theorem solution : ¬∃ (n : ℕ) (S : ℕ → Set ℕ), n > 1 ∧ is_partition n S ∧ s_prop n S := sorry
