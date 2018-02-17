module Graphics.Math.Shape.Circle
  ( Circle (..)
  , makeCircle
  ) where

import           Graphics.Math.Shape.Point2D (Point2D)

-- | A circle with a position and a radius.
data Circle a = Circle !(Point2D a) !a
  deriving Show

-- | Make a circle from a position and a radius.
makeCircle :: Point2D a -> a -> Circle a
makeCircle = Circle
{-# INLINE makeCircle #-}
