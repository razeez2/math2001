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

  -- We need to prove that 5 divides 35.
  -- This means there exists some integer k such that 35 = 5 * k.
  use 7
  -- Since 35 = 5 * 7, the proof is complete.
  exact Nat.mul_comm 5 7



@[autogradedProof 5]
theorem Prop6 {a b c : ℤ} (h1 : a ∣ b) (h2 : a ∣ c) : a ∣ b - c := by

  -- Unpack the assumption a | b, meaning there exists some k such that b = a * k
  cases h1 with k hk,
  -- Unpack the assumption a | c, meaning there exists some l such that c = a * l
  cases h2 with l hl,
  -- Substitute b and c in terms of k and l
  rw [hk, hl],
  -- Now we have: a * k - a * l
  -- Factor out a
  rw sub_mul,
  -- Since a * (k - l) is divisible by a, the proof is complete
  exact dvd_mul_right a (k - l)
  


@[autogradedProof 5]
theorem Prop8 {a b c : ℤ } (h : a ∣ b) : a ∣ b * c := by

 -- Unpack the assumption a | b, meaning there exists some k such that b = a * k
  cases h with k hk,
  -- Now substitute b in the expression b * c
  rw hk,
  -- We have: a * k * c = a * (k * c), which is divisible by a
  exact dvd_mul_right a (k * c)




@[autogradedProof 5]
theorem Prop9 { a d e x y : ℤ } (h1 : d ∣ a) (h2 : d ∣ b) : d ∣ (a * x + b * y) := by

-- Unpack the assumption d | a, meaning there exists some k such that a = d * k
  cases h1 with k hk,
  -- Unpack the assumption d | b, meaning there exists some l such that b = d * l
  cases h2 with l hl,
  -- Substitute a and b in terms of k and l in the expression a * x + b * y
  rw [hk, hl],
  -- Now we have: (d * k) * x + (d * l) * y
  -- Factor out d
  rw mul_assoc,
  rw mul_assoc,
  rw add_mul,
  -- We have: d * (k * x + l * y), which is divisible by d
  exact dvd_mul_right d (k * x + l * y)


@[autogradedProof 5]
theorem Prop10 { a b c : ℤ} (h1 : a ∣ b) (h2 : b ∣ c) : a ∣ c := by

  -- Unpack the assumption a | b, meaning there exists some k such that b = a * k
  cases h1 with k hk,
  -- Unpack the assumption b | c, meaning there exists some l such that c = b * l
  cases h2 with l hl,
  -- Substitute b in terms of a and k into c = b * l
  rw hk at hl,
  -- We now have: c = (a * k) * l = a * (k * l)
  -- Since c is a multiple of a, the proof is complete
  exact dvd_mul_right a (k * l)
