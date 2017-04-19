module Spark.MLlib.Feature where

import Java

-- Start org.apache.spark.mllib.feature.ChiSqSelector

foreign import java unsafe fit :: RDD LabeledPoint -> Java ChiSqSelector ChiSqSelectorModel

foreign import java unsafe fqr :: Java ChiSqSelector Double

foreign import java unsafe numTopFeatures :: Java ChiSqSelector Int

foreign import java unsafe percentile :: Java ChiSqSelector Double

foreign import java unsafe selectorType :: Java ChiSqSelector String

foreign import java unsafe setFpr :: Double -> Java ChiSqSelector ChiSqSelector

foreign import java unsafe setNumTopFeatures :: Double -> Java ChiSqSelector ChiSqSelector

foreign import java unsafe setPercentile :: Double -> Java ChiSqSelector ChiSqSelector

foreign import java unsafe setSelectorType :: String -> Java ChiSqSelector ChiSqSelector

-- End org.apache.spark.mllib.feature.ChiSqSelector
