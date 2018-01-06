module Bowling (score) where

score :: [Integer] -> Integer
score rolls =
    case rolls of
        first : second : rest ->
            let thisFrame = first + second
                bonus
                    | first == 10 = head rest + head (tail rest)
                    | thisFrame == 10 = head rest
                    | otherwise = 0
            in thisFrame + bonus + score rest
        other ->
            sum rolls
