module Graphics.Math.Util.Helpers
  ( clamp
  , smoothstep
  ) where

import           Flow ((<|))

-- | Clamp a value between min and max limits.
clamp :: Ord a => a -> a -> a -> a
clamp low high = max low . min high
{-# INLINE clamp #-}

-- | Smooth transition from 0 to 1 while the value is between the edges.
smoothstep :: (Fractional a, Ord a) => a -> a -> a -> a
smoothstep edge0 edge1 x =
  t * t * (3.0 - 2.0 * t)
  where
    t = clamp 0.0 1.0 <| (x - edge0) / (edge1 - edge0)
{-# INLINE smoothstep #-}
