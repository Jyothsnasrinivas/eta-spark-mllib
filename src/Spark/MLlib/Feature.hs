module Spark.MLlib.Feature where

import Java
import Java.Array

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

-- Start org.apache.spark.mllib.feature.ChiSqSelectorModel

foreign import java unsafe save :: SparkContext -> String -> Java ChiSqSelectorModel ()

foreign import java unsafe selectedFeatures :: Java ChiSqSelectorModel JIntArray

foreign import java unsafe transform :: Vector -> Java ChiSqSelectorModel Vector

-- End org.apache.spark.mllib.feature.ChiSqSelectorModel

-- Start org.apache.spark.mllib.feature.ElementwiseProduct

foreign import java unsafe scalingVec :: Java ElementwiseProduct Vector

foreign import java unsafe "transform"
  transformEP :: Vector -> Java ElementwiseProduct Vector

-- End org.apache.spark.mllib.feature.ElementwiseProduct

-- Start org.apache.spark.mllib.feature.HashingTF

foreign import java unsafe indexOf :: Object -> Java HashingTF Int

foreign import java unsafe numFeatures :: Java HashingTF Int

foreign import java unsafe setBinary :: Bool -> Java HashingTF HashingTF

foreign import java unsafe setHashAlgorithm :: String -> Java HashingTF HashingTF

-- End org.apache.spark.mllib.feature.HashingTF

-- Start org.apache.spark.mllib.feature.IDF

foreign import java unsafe "fit" fitIDF :: JavaRDD Vector -> Java IDF IDFModel

foreign import java unsafe "fit" fitRDDIDF :: RDD Vector -> Java IDF IDFModel

foreign import java unsafe minDocFreq :: Java IDF Int

-- End org.apache.spark.mllib.feature.IDF
