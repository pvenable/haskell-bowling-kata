module Bowling (score) where

score :: [Integer] -> Integer
score rolls =
    case rolls of
        first : second : rest ->
            let thisFrame = first + second
                bonus = if thisFrame == 10 then head rest else 0
            in thisFrame + bonus + score rest
        other ->
            sum rolls
