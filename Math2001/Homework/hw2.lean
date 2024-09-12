/- Copyright (c) Heather Macbeth, 2023.  All rights reserved. -/
import Mathlib.Data.Real.Basic
import Library.Basic
import AutograderLib

math2001_init

open Int


/-! # Homework 2

Don't forget to compare with the text version,
available as 215HW2.pdf on blackboard.
 -/

@[autogradedProof 5]
theorem problem1 {a b c : ℤ} (hab : a ^ 2 ∣ b) (hbc : b ^ 3 ∣ c) : a ^ 6 ∣ c := by
  sorry

@[autogradedProof 5]
theorem problem2 {x : ℤ} (h :  5 ∣ x ) :
    (2 * x + 3) ^ 2 ≡ 4 [ZMOD 5] := by
  sorry

@[autogradedProof 5]
theorem problem3 {a : ℤ} (ha : a ≡ 3 [ZMOD 5]) :
    a ^ 2 + 4 * a ≡ 1 [ZMOD 5] := by
  sorry

@[autogradedProof 5]
theorem problem4 {n a b c d : ℤ } (hab : a ≡ b [ZMOD n]) (hcd : c ≡ d [ZMOD n]) : 3*a - c ≡ 3*b - d [ZMOD n] := by
  sorry

@[autogradedProof 5]
theorem problem5 : ∃ k : ℤ, 5 * k ≡ 6 [ZMOD 8] := by
  sorry
