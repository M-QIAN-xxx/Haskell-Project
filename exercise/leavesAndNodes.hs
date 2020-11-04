data Tree a b = Leaf a | Node b [Tree a b]
    deriving(Show, Eq)

leavesAndNodes :: Tree a b -> ([a], [b])
leavesAndNodes = (foldr merge ([],[])) . go
    where
        go :: Tree a b -> [Either a b]
        go (Leaf a) = [Left a]
        go (Node b lst) = [Right b] ++ concat (map go lst)
        merge :: Either a b -> ([a],[b]) -> ([a],[b])
        merge (Left v) (x, y) = (v:x,y)
        merge (Right v) (x, y) = (x, v:y)
    
-- *Main> leavesAndNodes (Node "abc" [Node "x" [], Leaf 1, Leaf 2, Leaf 3])
-- ([1,2,3],["abc","x"])