module Algebra.Semigroup where

import Algebra.Magma
import Algebra.Prelude
import Algebra.Quasigroup

class Magma m => Semigroup m

class (Semigroup m, Quasigroup m) => InverseSemigroup m

instance (Semigroup m, Quasigroup m) => InverseSemigroup m

instance Semigroup (Sum Natural)

instance Semigroup (Product Natural)

instance Semigroup (Sum Integer)

instance Semigroup (Product Integer)