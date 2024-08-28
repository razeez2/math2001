import Mathlib.Data.Real.Basic
import Library.Basic

math2001_init

example {a b : ℚ} (h1 : 3 * a + b = 7) (h2 : a - b = 5): a = 3 :=
calc
  a = ((3 * a + b) + (a-b))/4 := by ring
  _ = (7 + 5)/4 := by rw [h1,h2]
  _ = 3 := by numbers

example {a b : ℚ} (h1 : 3 * a + b = 7) (h2 : a - b = 5): a = 3 :=
have hb  :=
calc
  b = - (a - b) + a := by ring
  _ = - 5 + a := by rw [h2]
  _ = a - 5 := by ring
have h3 :=
calc
  3 * a + b = 3 * a + (a - 5) := by rw [hb]
  _ = 4 * a - 5 := by ring
have h4 :=
calc
  4 * a = (4 * a - 5) + 5 := by ring
  _ = (3 * a + b) + 5 := by rw [h3]
  _ = 7 + 5 := by rw [h1]
  _ = 12 := by numbers
calc
  a = (4*a)/4 := by ring
  _ = 12/4 := by rw [h4]
  _ = 3 := by numbers





example {x y : ℚ} (h1 : x + y ≤ 3) (h2 : y = 1) : x ≤ 2 := by
addarith [h1,h2]


example {x y : ℚ} (h1 : x^2 - y = 2) (h2 : x + 3 = 1) : y = 2 := by
have hy :=
calc
 y = x^2 - (x^2 - y) := by ring
 _ = x^2 - 2 := by rw [h1]
have hx : x = -2 := by addarith [h2]
calc
  y = x^2 - 2 := by rw [hy]
  _ = (-2)^2 - 2 := by rw [hx]
  _ = 2 := by numbers



example {a b : ℚ} (h1 : 2 * a - b = 5) (h2 : b + 3 = 4) : a = 3 ∧ b = 1 := by
  have hb : b = 1 := by addarith [h2]
  constructor
  calc
      a = ((2 * a - b) + b)/2 := by ring
      _ = (5 + 1)/2 := by rw [h1,hb]
      _ = 3 := by ring
  apply hb
