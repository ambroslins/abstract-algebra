module Algebra.Prelude
  ( Nat,
    Natural,
    Int,
    Integer,
    Fixed (..),
    Float,
    Double,
    module Data.Bool,
    module Data.Function,
    module Data.Functor,
    module Data.Maybe,
    module Data.Ord,
    module Data.Ratio,
    module Data.Semigroup,
    module Data.Tuple,
  )
where

import Data.Bool (Bool (..))
import Data.Fixed (Fixed (..))
import Data.Function (const, fix, flip, id, on, ($), (&), (.))
import Data.Functor (Functor (..), void, ($>), (<$), (<$>), (<&>))
import Data.Int (Int)
import Data.Maybe (Maybe (..), maybe)
import Data.Ord (Ord (..), comparing)
import Data.Ratio (Ratio, (%))
import Data.Semigroup (All (..), Any (..), First (..), Last (..), Max (..), Min (..), Product (..), Sum (..))
import Data.Tuple (curry, fst, snd, swap, uncurry)
import Data.Word (Word)
import GHC.Natural (Natural)
import Prelude
  ( Double,
    Float,
    Integer,
  )

type Nat = Word
