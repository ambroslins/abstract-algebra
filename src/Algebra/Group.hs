module Algebra.Group where

import Algebra.Loop
import Algebra.Monoid

class (Monoid g, Loop g) => Group g

instance (Monoid g, Loop g) => Group g

class (CommutativeMonoid g, Loop g) => Abelian g

instance (CommutativeMonoid g, Loop g) => Abelian g
