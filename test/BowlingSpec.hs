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
        describe "with a spare" $
            it "returns the sum plus spare bonus" $
                score ([9, 1] ++ replicate 18 1) `shouldBe` 29
        describe "with a strike" $
            it "returns the sum plus strike bonus" $
                score (10 : replicate 18 1) `shouldBe` 30
        describe "with the perfect game" $
            it "returns 300" $
                score (replicate 12 10) `shouldBe` 300
