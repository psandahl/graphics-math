module Graphics.Math.Shape.OrientedRectangle
  ( OrientedRectangle (..)
  , makeOrientedRectangle
  ) where

import           Graphics.Math.Shape.Point2D (Point2D)
import           Linear                      (V2)

-- | Oriented rectangle with center point, half-extents and a rotation.
data OrientedRectangle a = OrientedRectangle !(Point2D a) !(V2 a) !a
  deriving Show

makeOrientedRectangle :: Point2D a -> V2 a -> a -> OrientedRectangle a
makeOrientedRectangle = OrientedRectangle
