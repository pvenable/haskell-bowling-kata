#!/bin/bash

hlint . && runhaskell -isrc test/BowlingSpec.hs
