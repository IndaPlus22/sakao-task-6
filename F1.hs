module F1 where

import Data.List
import Data.Char
import Data.Text (splitOn)

-- Vad ska de andra funktionernas typsignaturer vara?

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib x =
  let getfib n k i
        | i == x = k
        | otherwise = getfib k (n + k) (i + 1)
  in getfib 0 1 1


-- test why?
vokaler :: String
vokaler = "aiueoyåäö"

rovarsprak :: Foldable t => t Char -> [Char]
rovarsprak = concatMap (\x -> if x `elem` vokaler then [x] else [x, 'o', x])

karpsravor :: [Char] -> [Char]
karpsravor (x : xs)
  | x `elem` vokaler = x : karpsravor xs
  | otherwise = x : karpsravor (drop 2 xs)
karpsravor [] = []

remove :: [Char] -> [Char]
remove (x:xs)
  | isAlpha x  = 'a' : remove xs
  | otherwise = ' ' : remove xs
  -- | otherwise = remove xs
remove [] = []

medellangd :: String -> Double
medellangd s = fromIntegral (length (concat n)) / fromIntegral (length n)
  where
    n = words (remove s)

skipone :: [a] -> [a]
skipone (x : xs) = x : skipone (drop 1 xs)
skipone [] = []

skyffla :: [a] -> [a]
skyffla (x : xs)
  | length (x : xs) == 1 = x : xs
  | otherwise = skipone (x : xs) ++ skyffla (skipone xs)
skyffla [] = []