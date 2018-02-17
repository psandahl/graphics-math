module Graphics.Math.Util.Angles
  ( degToRad
  , radToDeg
  , angles2D
  , angles3D
  ) where

import           Flow   ((<|))
import           Linear (Epsilon, V2, V3, dot, normalize)

-- | Convert from degrees to radians.
degToRad :: Floating a => a -> a
degToRad x = x / 180 * pi
{-# INLINE degToRad #-}

-- | Convert fom radians to degrees.
radToDeg :: Floating a => a -> a
radToDeg x = x * 180 / pi
{-# INLINE radToDeg #-}

-- | Get the angle (in radians) between two 2D vectors.
angles2D :: (Epsilon a, Floating a) => V2 a -> V2 a -> a
angles2D l r = acos <| normalize l `dot` normalize r

-- | Get the angle (in radians) between two 3D vectors.
angles3D :: (Epsilon a, Floating a) => V3 a -> V3 a -> a
angles3D l r = acos <| normalize l `dot` normalize r
