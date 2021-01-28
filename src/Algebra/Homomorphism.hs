module Algebra.Homomorphism where

import Algebra.Prelude
import qualified Prelude

class Homomorphism a b where
  from :: a -> b

class Homomorphism a b => Monomorphism a b

class Homomorphism a b => Epimorphism a b

class Homomorphism a a => Endomorphism a

instance Homomorphism a a => Endomorphism a

class (Monomorphism a b, Monomorphism b a, Epimorphism a b, Epimorphism b a) => Isomorphism a b

instance (Monomorphism a b, Monomorphism b a, Epimorphism a b, Epimorphism b a) => Isomorphism a b

-- Natural -> Integer

instance Homomorphism Natural Integer where
  from = Prelude.toInteger

instance Monomorphism Natural Integer

-- Integer -> Natural

instance Homomorphism Integer (Maybe Natural) where
  from x =
    if x >= 0
      then Just $ Prelude.fromInteger x
      else Nothing

instance Epimorphism Integer (Maybe Natural)