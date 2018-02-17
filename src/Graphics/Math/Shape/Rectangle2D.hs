module Graphics.Math.Shape.Rectangle2D
  ( Rectangle2D
  , makeRectangle2D
  , rectangle2DMinPos
  , rectangle2DMaxPos
  ) where

import           Control.Lens                ((^.))
import           Graphics.Math.Shape.Point2D (Point2D, makePoint2D)
import           Linear                      (V2, _x, _y)

-- | A Rectangle with a position point and a size vector.
data Rectangle2D a = Rectangle2D !(Point2D a) !(V2 a)
  deriving Show

-- | Make a rectangle from an origin and a size vector.
makeRectangle2D :: Point2D a -> V2 a -> Rectangle2D a
makeRectangle2D = Rectangle2D
{-# INLINE makeRectangle2D #-}

-- | Return the minimum point of the rectangle.
rectangle2DMinPos :: (Num a, Ord a) => Rectangle2D a -> Point2D a
rectangle2DMinPos (Rectangle2D origin size) =
  let p = origin + size
      x = min (origin ^. _x) (p ^. _x)
      y = min (origin ^. _y) (p ^. _y)
  in makePoint2D x y

-- | Return the maximum point of the rectangle.
rectangle2DMaxPos :: (Num a, Ord a) => Rectangle2D a -> Point2D a
rectangle2DMaxPos (Rectangle2D origin size) =
  let p = origin + size
      x = max (origin ^. _x) (p ^. _x)
      y = max (origin ^. _y) (p ^. _y)
  in makePoint2D x y
