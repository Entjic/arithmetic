## Arithmetic 

Playing around with simple arithmetic expressions.

### simple.hs

Supports constants, addition, negation & multiplication.

Small-Step semantics and proof of termination / correctness of given eval function with respect to the semantic can be
found [here](Arith_Proof.pdf).

Example query:

``eval (Mult (Add (Const 1) (Neg (Const 4))) (Neg (Const 5)))`` corresponding to (1 + (-4)) * (-5)

### complex.hs

Supports constants, addition, negation, multiplication, preassigned variables & if-then-else constructs.

As an example query:

``eval (If (Var "x") (Mult (Neg (Const 3)) (Neg (Add (Const 2) (Var "y")))) (Const 1) (Const 2)) [("x", 3), ("y", 6)]``

For readability the equivalent python code would be

```python
if x == (-3 * (-(2 + y))):
  return 1
else:
  return 2
```

with respect to `` x -> 3; y -> 6``

#### Setup

Developed using The Glorious Glasgow Haskell Compilation System, version 8.6.5, ie. ``ghci simple.hs``