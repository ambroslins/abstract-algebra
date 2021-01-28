module Algebra.Quasigroup where

import Algebra.Magma
import Algebra.Prelude
import qualified Prelude

class Magma m => Quasigroup m where
  (</>) :: m -> m -> m
  (<\>) :: m -> m -> m

infixl 6 -

(-) :: Quasigroup (Sum a) => a -> a -> a
x - y = getSum (Sum x </> Sum y)

infixl 7 /

(/) :: Quasigroup (Product a) => a -> a -> a
x / y = getProduct (Product x </> Product y)

instance Quasigroup (Sum Integer) where
  Sum x </> Sum y = Sum (x Prelude.- y)
  Sum x <\> Sum y = Sum (y Prelude.- x)