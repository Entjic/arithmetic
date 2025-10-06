data Exp = Const Int | Add (Exp) (Exp) | Neg (Exp) | Mult (Exp) (Exp)


eval :: Exp -> Int
eval (Const c) = c
eval (Add a b) = (eval a) + (eval b)
eval (Neg a) = - (eval a)
eval (Mult a b) = (eval a) * (eval b)