module Graphics.Math.Shape.Line2D
  ( Line2D
  , makeLine2D
  , line2DLength
  , line2DLengthSq
  ) where

import           Flow                        ((<|))
import           Graphics.Math.Shape.Point2D (Point2D)
import           Linear                      (norm, quadrance)

-- | A 2D line, with a start and an end point.
data Line2D a = Line2D !(Point2D a) !(Point2D a)
  deriving Show

-- | Make a new line from two points.
makeLine2D :: Point2D a -> Point2D a -> Line2D a
makeLine2D = Line2D
{-# INLINE makeLine2D #-}

-- | The length of a line.
line2DLength :: Floating a => Line2D a -> a
line2DLength (Line2D start end) =
  norm <| end - start

-- | The squared length of a line.
line2DLengthSq :: Floating a => Line2D a -> a
line2DLengthSq (Line2D start end) =
  quadrance <| end - start
