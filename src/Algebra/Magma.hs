module Algebra.Magma (Magma (..)) where

class Magma m where
  (<>) :: m -> m -> m