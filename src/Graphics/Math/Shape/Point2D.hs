module Graphics.Math.Shape.Point2D
  ( Point2D
  , makePoint2D
  ) where

import           Linear (V2 (..))

-- | Type alias for a 2D point type.
type Point2D = V2

-- | Make a 2D point from one x and one y coordinate value.
makePoint2D :: a -> a -> Point2D a
makePoint2D = V2
{-# INLINE makePoint2D #-}
