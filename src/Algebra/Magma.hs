module Algebra.Magma
  ( Magma (..),
    (+),
    (*),
  )
where

import Algebra.Prelude
import qualified Prelude

class Magma m where
  (<>) :: m -> m -> m

infixl 6 +

(+) :: Magma (Sum a) => a -> a -> a
x + y = getSum (Sum x <> Sum y)

infixl 7 *

(*) :: Magma (Product a) => a -> a -> a
x * y = getProduct (Product x <> Product y)

instance Magma (Sum Natural) where
  Sum x <> Sum y = Sum (x Prelude.+ y)

instance Magma (Product Natural) where
  Product x <> Product y = Product (x Prelude.* y)

instance Magma (Sum Integer) where
  Sum x <> Sum y = Sum (x Prelude.+ y)

instance Magma (Product Integer) where
  Product x <> Product y = Product (x Prelude.* y)
