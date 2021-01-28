module Algebra.Unital where

import Algebra.Magma
import Algebra.Prelude

class Magma m => Unital m where
  identity :: m

instance Unital (Sum Natural) where
  identity = Sum 0

instance Unital (Product Natural) where
  identity = Product 0

instance Unital (Sum Integer) where
  identity = Sum 0

instance Unital (Product Integer) where
  identity = Product 0

zero :: Unital (Sum m) => m
zero = getSum identity

one :: Unital (Product m) => m
one = getProduct identity
