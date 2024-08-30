import Mathlib.Tactic.GCongr
import Library.Basic

math2001_init

example : (5 : ℕ) ∣ 35 := by
  sorry

theorem Prop5 {a b c : ℤ} (h1 : a ∣ b) (h2 : a ∣ c) : a ∣ b + c := by
 sorry


theorem Prop6 {a b c : ℤ} (h1 : a ∣ b) (h2 : a ∣ c) : a ∣ b - c := by
  sorry

theorem Prop8 {a b c : ℤ } (h : a ∣ b) : a ∣ b * c := by
  sorry

theorem Prop9 { a d e x y : ℤ } (h1 : d ∣ a) (h2 : d ∣ b) : d ∣ (a * x + b * y) := by
  sorry

theorem Prop10 { a b c : ℤ} (h1 : a ∣ b) (h2 : b ∣ c) : a ∣ c := by
  sorry

theorem Prop11 { c d  : ℕ} (hd : 0 < d) (hcd : c ∣ d) : c ≤ d := by
  sorry


theorem Cor12 : ¬(2 : ℤ) ∣ 1 := by
  sorry
