module BowlingSpec where

import Test.Hspec
import Bowling

main :: IO ()
main = hspec $
    describe "Bowling.score" $
        describe "with all gutters" $
            it "returns 0" $
                score (replicate 20 0) `shouldBe` 0