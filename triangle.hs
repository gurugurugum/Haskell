--import System.Environment (getArgs)

fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n -2)

--fibs = map (fib) [0..]

--fibs = sieve [0..]
--    where sieve (p:xs) = (fib p) : sieve [x | x <- xs]

values = [1..100]

comparet x y = if x3>y3 then -1 else 
               if x3<y3 then  1 else
               if x2>y2 then -1 else 
               if x2<y2 then  1 else 
               if x1>y1 then -1 else 
               if x1<y1 then  1 else 0
                  where (x1, x2, x3) = x
                        (y1, y2, y3) = y

compares x y = if x1*x2>y1*y2 then -1 else 
               if x1*x2<y1*y2 then  1 else comparet x y
                  where (x1, x2, x3) = x
                        (y1, y2, y3) = y

qsort [] = []
qsort (n:xs) = (qsort lt) ++ [n] ++ (qsort gteq)
      where
        lt   = [x | x <- xs, (compares n x) == -1]
        gteq = [x | x <- xs, (compares n x) ==  1 || (compares n x) == 0]

main = do
--     args <- getArgs
--       print [fib x | x <- [0..5]]
         print [(x, y, z) | x <- values, y <- values, z <- values, x*x + y*y == z*z, x<y]
         print (qsort [(x, y, z) | x <- values, y <- values, z <- values, x*x + y*y == z*z, x<y])