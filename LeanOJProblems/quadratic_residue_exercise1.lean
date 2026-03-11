import Mathlib.Data.Nat.Prime.Defs
import Mathlib.Data.ZMod.Defs

def answer : Set ℕ := sorry

theorem solution :
    { p : ℕ | p.Prime ∧ ∀ a, 0 < a → a < p → IsSquare (a : ZMod p) → ∀ b, b ∣ a →
      IsSquare (b : ZMod p) } = answer := sorry
