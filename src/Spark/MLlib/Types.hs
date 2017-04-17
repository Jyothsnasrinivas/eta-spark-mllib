{-# LANGUAGE DataKinds #-}
module Spark.MLlib.Types where

import Java
import Spark.Core

data {-# CLASS "org.apache.spark.mllib.classification.ClassificationModel" #-}
  ClassificationModel = ClassificationModel (Object# ClassificationModel)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.linalg.Vector" #-}
  Vector = Vector (Object# Vector)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.classification.LogisticRegressionModel" #-}
  LogisticRegressionModel = LogisticRegressionModel (Object# LogisticRegressionModel)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.regression.GeneralizedLinearModel" #-}
  GeneralizedLinearModel = GeneralizedLinearModel (Object# GeneralizedLinearModel)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.regression.GeneralizedLinearAlgorithm" #-}
  GeneralizedLinearAlgorithm m = GeneralizedLinearAlgorithm (Object# (GeneralizedLinearAlgorithm m))
  deriving Class

data {-# CLASS "org.apache.spark.mllib.regression.LabeledPoint" #-}
  LabeledPoint = LabeledPoint (Object# LabeledPoint)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.classification.LogisticRegressionWithLBFGS" #-}
  LogisticRegressionWithLBFGS = LogisticRegressionWithLBFGS (Object# LogisticRegressionWithLBFGS)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.classification.LogisticRegressionWithSGD" #-}
  LogisticRegressionWithSGD = LogisticRegressionWithSGD (Object# LogisticRegressionWithSGD)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.classification.NaiveBayes" #-}
  NaiveBayes = NaiveBayes (Object# NaiveBayes)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.classification.NaiveBayesModel" #-}
  NaiveBayesModel = NaiveBayesModel (Object# NaiveBayesModel)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.classification.StreamingLogisticRegressionWithSGD" #-}
  StreamingLogisticRegressionWithSGD = StreamingLogisticRegressionWithSGD (Object# StreamingLogisticRegressionWithSGD)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.regression.StreamingLinearAlgorithm" #-}
  StreamingLinearAlgorithm m a = StreamingLinearAlgorithm (Object# (StreamingLinearAlgorithm m a))
  deriving Class

data {-# CLASS "org.apache.spark.mllib.classification.SVMModel" #-}
  SVMModel = SVMModel (Object# SVMModel)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.classification.SVMWithSGD" #-}
  SVMWithSGD = SVMWithSGD (Object# SVMWithSGD)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.classification.impl.GLMClassificationModel" #-}
 GLMClassificationModel= GLMClassificationModel (Object# GLMClassificationModel)
  deriving Class
