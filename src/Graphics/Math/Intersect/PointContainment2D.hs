module Graphics.Math.Intersect.PointContainment2D
  ( pointOnLine
  ) where

import           Control.Lens                ((^.))
import           Graphics.Math.Shape.Line2D  (Line2D (..))
import           Graphics.Math.Shape.Point2D (Point2D)
import           Graphics.Math.Util.Helpers  (nearEqual)
import           Linear                      (Epsilon, _x, _y)

-- | Check if the point is on the (infinite) line.
pointOnLine :: (Epsilon a, Fractional a) => Point2D a -> Line2D a -> Bool
pointOnLine point (Line2D start end) =
  let dx = end ^. _x - start ^. _x
      dy = end ^. _y - start ^. _y
      slope = dy / dx
      yIcpt = start ^. _y - slope * start ^. _x
  in nearEqual (point ^. _y) (slope * point ^. _x + yIcpt)
