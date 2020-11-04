fac :: (Eq p, Num p) => p -> p
fac n = if n == 0 then 1 else n * fac (n-1)