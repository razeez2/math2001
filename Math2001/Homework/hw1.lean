/- Copyright (c) Heather Macbeth, 2023.  All rights reserved. -/
import Mathlib.Data.Real.Basic
import Library.Basic
import AutograderLib

math2001_init

/-! # Homework 1

Don't forget to compare with the text version,
available as 215HW1.pdf on blackboard.
 -/



@[autogradedProof 5]
theorem Prob1 : (5 : ℕ) ∣ 35 := by
  sorry


@[autogradedProof 5]
theorem Prop6 {a b c : ℤ} (h1 : a ∣ b) (h2 : a ∣ c) : a ∣ b - c := by
  sorry


@[autogradedProof 5]
theorem Prop8 {a b c : ℤ } (h : a ∣ b) : a ∣ b * c := by
  sorry




@[autogradedProof 5]
theorem Prop9 { a d e x y : ℤ } (h1 : d ∣ a) (h2 : d ∣ b) : d ∣ (a * x + b * y) := by
  sorry


@[autogradedProof 5]
theorem Prop10 { a b c : ℤ} (h1 : a ∣ b) (h2 : b ∣ c) : a ∣ c := by
  sorry
