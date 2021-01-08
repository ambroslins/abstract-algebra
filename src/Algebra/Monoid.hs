module Algebra.Monoid where

import Algebra.Semigroup
import Algebra.Unital

class (Semigroup m, Unital m) => Monoid m

instance (Semigroup m, Unital m) => Monoid m

class Monoid m => CommutativeMonoid m