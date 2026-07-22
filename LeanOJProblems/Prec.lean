import Mathlib.tactic

def a : ℕ → ℚ
  | 0 => 0
  | 1 => 1
  | 2 => 8
  | 3 => 41
  | n + 4 => ((8 * n + 29)*(a (n + 3)) - (18 * n + 63) * (a (n + 2)) + 27 * (a (n + 1)) + (27 * n + 27) * (a n)) / (n + 4)

theorem solution {n : ℕ} : a n ∈ Set.range Int.cast := by sorry
