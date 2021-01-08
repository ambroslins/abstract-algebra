module Algebra.Unital where

import Algebra.Magma

class Magma m => Unital m where
  identity :: m