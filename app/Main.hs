module Main where

import System.Environment

main :: IO ()
main = do
  [_, input, out] <- getArgs
  readFile input >>= writeFile out . ("{-# OPTIONS_GHC -fplugin=Lib #-}\n" ++)
