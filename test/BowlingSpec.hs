module BowlingSpec where

import Test.Hspec
import Bowling

main :: IO ()
main = hspec $
    describe "Bowling.score" $ do
        describe "with all gutters" $
            it "returns 0" $
                score (replicate 20 0) `shouldBe` 0
        describe "with all open frames" $
            it "returns the sum" $
                score (replicate 20 1) `shouldBe` 20