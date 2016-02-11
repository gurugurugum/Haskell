--import System.Environment (getArgs)

fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n -2)

--fibs = map (fib) [0..]

--fibs = sieve [0..]
--    where sieve (p:xs) = (fib p) : sieve [x | x <- xs]

main = do
--     args <- getArgs
       print [fib x | x <- [0..5]]