module Algebra.Quasigroup where

import Algebra.Magma

class Magma m => Quasigroup m where
  (</>) :: m -> m -> m
  (<\>) :: m -> m -> m