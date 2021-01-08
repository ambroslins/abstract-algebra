module Algebra.Loop where

import Algebra.Quasigroup
import Algebra.Unital

class (Quasigroup m, Unital m) => Loop m

instance (Quasigroup m, Unital m) => Loop m
