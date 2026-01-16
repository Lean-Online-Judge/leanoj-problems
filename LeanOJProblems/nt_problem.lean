import Mathlib.Algebra.Ring.Parity

theorem solution {a b n : ℕ} (hs : a > b ∧ b > 1) (hn : n > 0) (ho : Odd b)
    (hd : b ^ n ∣ a ^ n - 1) : n * a ^ b > 3 ^ n := sorry
