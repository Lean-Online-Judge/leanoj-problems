import Mathlib.Data.Real.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Analysis.Complex.Trigonometric
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
open Real

theorem solution (n : ℕ) (hn : n > 0) (b : ℕ → ℝ) (hb : ∑ i ∈ Finset.range n, b i = 0) (hb_round : b 0 = b n) :
    ∑ i ∈ Finset.range n, b i * (b (i + 1)) ≤ (cos (2 * π / n)) * ∑ i ∈ Finset.range n, (b i) ^ 2 := sorry
