import Mathlib.Data.Real.Basic

def P (f : ℝ → ℝ) (α : ℝ) := ∀ x y, f (f (x + y)) = f (x + y) + f x * f y + α * x * y

def answer (α : ℝ) : Set (ℝ → ℝ) := sorry

theorem solution (f : ℝ → ℝ) {α : ℝ} (hα : α ≠ 0) : P f α ↔ f ∈ answer α := sorry
