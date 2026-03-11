import Mathlib.Combinatorics.SimpleGraph.Clique
import Mathlib.Data.NNReal.Defs

theorem solution {V : Type u} [Fintype V] {G : SimpleGraph V} [DecidableRel G.Adj]
    (x : V → NNReal) :
    ∑ e ∈ G.edgeFinset, (e.map x).mul ≤
      (G.cliqueNum - 1 : ℕ) / (2 * G.cliqueNum) * (∑ v : V, x v) ^ 2 := sorry
