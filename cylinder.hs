cylinder :: Double -> Double -> Double
cylinder r h = h * base
    where base = 3.14 * square r
          square x = x * x

main = print (cylinder 2.0 5.0)  -- 出力: 62.8