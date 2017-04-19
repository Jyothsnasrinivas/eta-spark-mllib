{-# LANGUAGE DataKinds #-}

module Spark.MLlib.Evaluation where

import Java
import Java.Array
import Java.Primitive
import Java.Wrappers
import Spark.MLlib.Types
import Spark.Core

-- Start org.apache.spark.mllib.evaluation.BinaryClassificationMetrics

foreign import java unsafe areaUnderPR :: Java BinaryClassificationMetrics Double

foreign import java unsafe areaUnderROC :: Java BinaryClassificationMetrics Double

foreign import java unsafe numBins :: Java BinaryClassificationMetrics Int

foreign import java unsafe thresholds :: Java BinaryClassificationMetrics (RDD Object)

foreign import java unsafe unpersist :: Java BinaryClassificationMetrics ()

-- End org.apache.spark.mllib.evaluation.BinaryClassificationMetrics
