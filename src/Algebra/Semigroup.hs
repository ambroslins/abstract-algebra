module Algebra.Semigroup where

import Algebra.Magma
import Algebra.Quasigroup

class Magma m => Semigroup m

class (Semigroup m, Quasigroup m) => InverseSemigroup m

instance (Semigroup m, Quasigroup m) => InverseSemigroup m