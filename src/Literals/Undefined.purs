module Literals.Undefined (Undefined, undefined) where

import Prelude

foreign import data Undefined :: Type

foreign import undefinedImpl :: Undefined
undefined :: Undefined
undefined = undefinedImpl

instance undefinedEq :: Eq Undefined where
  eq _ _ = true
instance undefinedShow :: Show Undefined where
  show _ = "Undefined"
