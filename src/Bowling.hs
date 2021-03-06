module Bowling (score) where

score :: [Integer] -> Integer
score = scoreFrames 10

scoreFrames :: Integer -> [Integer] -> Integer
scoreFrames 0 _ = 0
scoreFrames frameCount rolls =
    case rolls of
        first : second : rest
            | first == 10 -> 10 + sum (take 2 (drop 1 rolls)) + scoreFrames frameCount' (drop 1 rolls)
            | first + second == 10 -> 10 + head rest + scoreFrames frameCount' (drop 2 rolls)
            | otherwise -> first + second + scoreFrames frameCount' (drop 2 rolls)
            where frameCount' = frameCount - 1
