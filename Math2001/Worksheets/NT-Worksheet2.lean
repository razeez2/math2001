import Mathlib.Tactic.GCongr
import Library.Basic
import Library.Theory.ModEq.Defs


math2001_init



theorem Prop13 { n : ℤ } : n ∣ 0 := by
  sorry


theorem Prop14 { a  n : ℤ } : n ∣ a - a := by
  sorry


theorem Prop15 { n a b : ℤ } (h1 : n ∣ a - b ) : n ∣ b - a := by
  sorry


theorem Prop16 { n a b c : ℤ } (h1 : n ∣ a-b ) (h2 : n ∣  b-c ) : n ∣ a - c := by
  sorry


theorem Prop19 { a : ℤ } { n : ℕ } : a ≡ a [ZMOD n] := by
  sorry


theorem Prop20 { a b : ℤ } { n : ℕ } (h : a ≡ b [ZMOD n]) : b ≡ a [ZMOD n] := by
  sorry


theorem Prop21 { a b c : ℤ } { n : ℕ} (h1 : a ≡ b [ZMOD n]) (h2 : b ≡ c [ZMOD n]) : a ≡ c [ZMOD n] := by
  sorry
