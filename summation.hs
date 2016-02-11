summation :: (Int -> Int) -> Int -> Int
summation f 1 = f 1
summation f n = f n + summation f (n - 1)

square :: Int -> Int
square x = x * x

-- main = print (summation square 2)  -- 出力: 14
main = print (map (+ 2) [1, 2, 3, 4, 5])
-- main = print (map square [1, 2, 3, 4, 5])