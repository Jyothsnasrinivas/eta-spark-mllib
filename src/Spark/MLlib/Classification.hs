{-# LANGUAGE DataKinds #-}

module Spark.MLlib.Classification where

import Java
import Java.Array
import Spark.MLlib.Types
import Spark.Core

data {-# CLASS "double[][]"  #-} JDoubleArrays  = JDoubleArrays  (Object# JDoubleArrays)
  deriving

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

-- Start org.apache.spark.mllib.classification.LogisticRegressionWithSGD

type instance Inherits LogisticRegressionWithSGD =
    '[GeneralizedLinearAlgorithm LogisticRegressionModel]

-- End org.apache.spark.mllib.classification.LogisticRegressionWithSGD

-- Start org.apache.spark.mllib.classification.NaiveBayes

foreign import java unsafe getLambda :: Java NaiveBayes Double

foreign import java unsafe getModelType :: Java NaiveBayes String

foreign import java unsafe "run"
  runNaiveBayes :: RDD LabeledPoint -> Java NaiveBayes NaiveBayesModel

foreign import java unsafe setLambda :: Double -> Java NaiveBayes NaiveBayes

foreign import java unsafe setModelType :: Double -> Java NaiveBayes NaiveBayes

-- End org.apache.spark.mllib.classification.NaiveBayes

-- Start org.apache.spark.mllib.classification.NaiveBayesModel

type instance Inherits NaiveBayesModel = '[Object, ClassificationModel]

foreign import java unsafe labels :: Java NaiveBayesModel JDoubleArray

foreign import java unsafe modelType :: Java NaiveBayesModel String

foreign import java unsafe pi :: Java NaiveBayesModel JDoubleArray

foreign import java unsafe predictPosibilities :: RDD Vector
                                               -> Java NaiveBayesModel (RDD Vector)

foreign import java unsafe predictPosibilities :: Vector
                                              -> Java NaiveBayesModel Vector

foreign import java unsafe save :: SparkContext -> String -> Java NaiveBayesModel ()

foreign import java unsafe theta :: Java NaiveBayesModel JDoubleArrays

-- End org.apache.spark.mllib.classification.NaiveBayesModel

-- Start org.apache.spark.mllib.classification.StreamingLogisticRegressionWithSGD

type instance Inherits StreamingLogisticRegressionWithSGD = '[StreamingLinearAlgorithm LogisticRegressionModel LogisticRegressionWithSGD]

foreign import java unsafe setInitialWeights :: Vector
    -> Java StreamingLogisticRegressionWithSGD StreamingLogisticRegressionWithSGD

foreign import java unsafe setMiniBatchFraction :: Double
    -> Java StreamingLogisticRegressionWithSGD StreamingLogisticRegressionWithSGD

foreign import java unsafe setNumIterations :: Int
    -> Java StreamingLogisticRegressionWithSGD StreamingLogisticRegressionWithSGD

foreign import java unsafe setRegParam :: Double
    -> Java StreamingLogisticRegressionWithSGD StreamingLogisticRegressionWithSGD

foreign import java unsafe setStepSize :: Double
    -> Java StreamingLogisticRegressionWithSGD StreamingLogisticRegressionWithSGD

-- End org.apache.spark.mllib.classification.StreamingLogisticRegressionWithSGD

-- Start org.apache.spark.mllib.classification.SVMModel

type instance Inherits SVMModel = '[GeneralizedLinearModel]

foreign import java unsafe "clearThreshold"
  clearThresholdSVMModel :: Java SVMModel SVMModel

-- End org.apache.spark.mllib.classification.SVMModel

-- Start org.apache.spark.mllib.classification.SVMWithSGD

type instance Inherits SVMWithSGD = '[GeneralizedLinearAlgorithm SVMModel]

-- End org.apache.spark.mllib.classification.SVMWithSGD
