{-# LANGUAGE FlexibleContexts, TypeFamilies #-}

-- | A class for integers mod a prime power.

module Crypto.Lol.Types.ZPP
( ZPP(..)
) where

import Crypto.Lol.LatticePrelude
import Crypto.Lol.Types.FiniteField

-- | Represents integers modulo a prime power.
class (PrimeField (ZPOf zq), Ring zq, Ring (ZPOf zq)) => ZPP zq where

  -- | An implementation of the integers modulo the prime base.
  type ZPOf zq

  -- | The prime and exponent of the modulus.
  modulusZPP :: Tagged zq PP

  -- | Lift from @Z_p@ to a representative.
  liftZp :: ZPOf zq -> zq

