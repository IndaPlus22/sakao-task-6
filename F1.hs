module F1 where

import Data.List
import Data.Text (splitOn)

-- Vad ska de andra funktionernas typsignaturer vara?

-- make this fibs thingy
fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

-- 0, 1                  0, 1, 1                      0, 1, 1, 2                       0, 1, 1, 2, 3
-- 1    => 0 : 1 : [1]   1, 1     => 0 : 1 : [1, 2]   1, 1, 2    => 0 : 1 : [1, 2, 3]  1, 1, 2, 3     => 0 : 1 : [1, 2, 3, 5]
-- 1                     1, 2                         1, 2, 3                          1, 2, 3, 5

fib :: Int -> Integer
fib n = fibs !! n -- finds index n of the fibonacci series

-- test why?
vokaler :: String
vokaler = "aiueoyåäö"

rovarsprak :: Foldable t => t Char -> [Char]
rovarsprak = concatMap (\x -> if x `elem` vokaler then [x] else [x, 'o', x])


karpsravor :: [Char] -> [Char]
karpsravor (x:xs)
  | x `elem` vokaler = x : karpsravor xs
  | otherwise = x : karpsravor (drop 2 xs)
karpsravor [] = []


medellangd :: Fractional a => String -> a
medellangd s = fromIntegral (length (concat n)) / fromIntegral (length n)
    where n = (words s)

split :: [a] -> ([a], [a])
split (x:xs) = let (evens, odds) = split xs
        in (x:odds, evens)
split [] = ([], [])

-- skyffla :: [a] -> [a]
-- skyffla (x:xs) = (split x:xs)