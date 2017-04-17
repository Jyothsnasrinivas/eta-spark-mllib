{-# LANGUAGE DataKinds #-}

module Spark.MLlib.Classification where

import Java
import Spark.MLlib.Types
import Spark.Core

-- Start org.apache.spark.mllib.classification.ClassificationModel

foreign import java unsafe "@interface predict" predict ::
  (a <: ClassificationModel) => JavaRDD Vector -> Java a (JavaRDD JDouble)

foreign import java unsafe "@interface predict" predict2 ::
  (a <: ClassificationModel) => RDD Vector -> Java a (RDD Object)

foreign import java unsafe "@interface predict" predict3 ::
  (a <: ClassificationModel) => Vector -> Java a JDouble

-- End org.apache.spark.mllib.classification.ClassificationModel

-- Start org.apache.spark.mllib.classification.LogisticRegressionModel

type instance Inherits LogisticRegressionModel = '[GeneralizedLinearModel]

foreign import java unsafe clearThreshold :: (b <: LogisticRegressionModel)
  => Java b LogisticRegressionModel

foreign import java unsafe intercept :: (b <: LogisticRegressionModel)
  => Java b Double

foreign import java unsafe numClasses :: (b <: LogisticRegressionModel)
  => Java b Int

foreign import java unsafe numFeatures :: (b <: LogisticRegressionModel)
  => Java b Int

foreign import java unsafe save :: (b <: LogisticRegressionModel)
  => SparkContext -> String -> Java b ()

foreign import java unsafe setThreshold :: (b <: LogisticRegressionModel)
  => Double -> Java b LogisticRegressionModel

foreign import java unsafe weights :: (b <: LogisticRegressionModel)
  => Java b Vector

-- Start org.apache.spark.mllib.classification.LogisticRegressionWithLBFGS

type instance Inherits LogisticRegressionWithLBFGS =
    '[GeneralizedLinearAlgorithm LogisticRegressionModel]

foreign import java unsafe
  run :: RDD LabeledPoint -> Java LogisticRegressionWithLBFGS LogisticRegressionModel

foreign import java unsafe
  "run" runVector :: RDD LabeledPoint -> Vector
  -> Java LogisticRegressionWithLBFGS LogisticRegressionModel

foreign import java unsafe
  setNumClasses :: Int -> Java LogisticRegressionWithLBFGS LogisticRegressionWithLBFGS

-- End org.apache.spark.mllib.classification.LogisticRegressionWithLBFGS
