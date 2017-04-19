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

-- Start org.apache.spark.mllib.evaluation.MulticlassMetrics

foreign import java unsafe accuracy :: Java MulticlassMetrics Double

foreign import java unsafe confusionMatrix :: Java MulticlassMetrics Matrix

foreign import java unsafe falsePositiveRate :: Double -> Java MulticlassMetrics Double

foreign import java unsafe fMeasure :: Double -> Java MulticlassMetrics Double

foreign import java unsafe "fMeasure"
  fMeasure :: Double -> Double -> Java MulticlassMetrics Double

foreign import java unsafe labels :: Double -> Java MulticlassMetrics JDoubleArray

foreign import java unsafe precision :: Double -> Java MulticlassMetrics Double

foreign import java unsafe recall :: Double -> Java MulticlassMetrics Double

foreign import java unsafe truePositiveRate :: Double -> Java MulticlassMetrics Double

foreign import java unsafe weightedFalsePositiveRate :: Java MulticlassMetrics Double

foreign import java unsafe weightedFMeasure :: Java MulticlassMetrics Double

foreign import java unsafe "weightedFMeasure"
  weightedFMeasureDouble :: Double -> Java MulticlassMetrics Double

foreign import java unsafe weightedPrecision :: Java MulticlassMetrics Double

foreign import java unsafe weightedRecall :: Java MulticlassMetrics Double

foreign import java unsafe weightedTruePositiveRate :: Java MulticlassMetrics Double

-- End org.apache.spark.mllib.evaluation.MulticlassMetrics
