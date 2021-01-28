module Algebra.Monoid where

import Algebra.Prelude
import Algebra.Semigroup
import Algebra.Unital

class (Semigroup m, Unital m) => Monoid m

instance (Semigroup m, Unital m) => Monoid m

class Monoid m => CommutativeMonoid m

instance CommutativeMonoid (Sum Natural)

instance CommutativeMonoid (Product Natural)

instance CommutativeMonoid (Sum Integer)

instance CommutativeMonoid (Product Integer)