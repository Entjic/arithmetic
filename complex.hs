data Exp
  = Const Int
  | Add (Exp) (Exp)
  | Neg (Exp)
  | Mult (Exp) (Exp)
  | Var String
  | If (Exp) (Exp) (Exp) (Exp)
  deriving (Show, Eq)

type Env = [(String, Int)]


value :: String -> Env -> Int
value _ [] = error "Variable not assigned"
value s (x:xs) = if (fst x) == s then (snd x) else value s xs

eval :: Exp -> Env -> Int
eval (Const c) _ = c
eval (Add a b) env = (eval a env) + (eval b env)
eval (Neg a) env = - (eval a env)
eval (Mult a b) env = (eval a env) * (eval b env)
eval (Var s) env = value s env
eval (If a b t e) env = if (eval a env) == (eval b env) then (eval t env) else (eval e env)

