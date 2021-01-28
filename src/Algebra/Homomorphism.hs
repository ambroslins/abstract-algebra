module Algebra.Homomorphism where

class Homomorphism a b where
  to :: a -> b

class Homomorphism a b => Monomorphism a b

class Homomorphism a b => Epimorphism a b

class Homomorphism a a => Endomorphism a

instance Homomorphism a a => Endomorphism a

class (Monomorphism a b, Monomorphism b a, Epimorphism a b, Epimorphism b a) => Isomorphism a b

instance (Monomorphism a b, Monomorphism b a, Epimorphism a b, Epimorphism b a) => Isomorphism a b