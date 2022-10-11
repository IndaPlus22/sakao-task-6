module F1 where

-- Vad ska de andra funktionernas typsignaturer vara?
-- fibs xs = [x | x <- [0..10], x ]

-- make this fibs thingy
fibs :: Integer -> Integer -> [Integer]
-- fibs 0 1 = [0, 1, 1]
fibs 0 0 = [0, 1]
fibs n k =  fibs (k-n) n ++ (n+k)

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

-- test why?
vokaler = "aiueoyåäö"

rovarsprak :: [Char] -> [Char]
rovarsprak (x:xs) 
    | x `elem` vokaler = x : rovarsprak xs
    | otherwise = x:'o':x: rovarsprak xs
rovarsprak [] = []


karpsravor :: [Char] -> [Char]
karpsravor (x:xs) 
    | x `elem` "aiueoyåäö" = x : karpsravor xs
    | otherwise = x : karpsravor (drop 2 xs)
karpsravor [] = []

medellangd s = 1.0
skyffla s = s