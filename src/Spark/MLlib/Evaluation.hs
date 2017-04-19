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

-- Start org.apache.spark.mllib.evaluation.MultilabelMetrics

foreign import java unsafe "accuracy" accuracyMMetrics :: Java MultilabelMetrics Double

foreign import java unsafe f1Measure  :: Java MultilabelMetrics Double

foreign import java unsafe "f1Measure"
  f1MeasureDouble :: Double -> Java MultilabelMetrics Double

foreign import java unsafe hammingLoss  :: Java MultilabelMetrics Double

foreign import java unsafe "labels" labelsMMetrics  :: Java MultilabelMetrics JDoubleArray

foreign import java unsafe microF1Measure :: Java MultilabelMetrics Double

foreign import java unsafe microPrecision :: Java MultilabelMetrics Double

foreign import java unsafe microRecall :: Java MultilabelMetrics Double

foreign import java unsafe "precision" precisionMMetrics :: Java MultilabelMetrics Double

foreign import java unsafe "precision" precisionDoubleMMetrics :: Java MultilabelMetrics Double

foreign import java unsafe "recall" recallMMetrics :: Java MultilabelMetrics Double

foreign import java unsafe "recall" recallDoubleMMetrics :: Java MultilabelMetrics Double

foreign import java unsafe subsetAccuracy :: Java MultilabelMetrics Double

-- End org.apache.spark.mllib.evaluation.MultilabelMetrics

-- Start org.apache.spark.mllib.evaluation.RankingMetrics

foreign import java unsafe meanAveragePrecision :: Java RankingMetrics Double

foreign import java unsafe ndcgAt :: Int -> Java RankingMetrics Double

foreign import java unsafe precisionAt :: Int -> Java RankingMetrics Double

-- End org.apache.spark.mllib.evaluation.RankingMetrics
