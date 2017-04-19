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

data {-# CLASS "org.apache.spark.mllib.linalg.Matrix" #-}
  Matrix = Matrix (Object# Matrix)
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
 GLMClassificationModel = GLMClassificationModel (Object# GLMClassificationModel)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.clustering.BisectingKMeans" #-}
 BisectingKMeans = BisectingKMeans (Object# BisectingKMeans)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.clustering.BisectingKMeansModel" #-}
 BisectingKMeansModel = BisectingKMeansModel (Object# BisectingKMeansModel)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.clustering.LDAModel" #-}
 LDAModel = LDAModel (Object# LDAModel)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.clustering.DistributedLDAModel" #-}
 DistributedLDAModel = DistributedLDAModel (Object# DistributedLDAModel)
  deriving Class

-- data {-# CLASS "org.apache.spark.mllib.linalg.Vector" #-}
--  Vector = Vector (Object# Vector)
--   deriving Class

data {-# CLASS "org.apache.spark.mllib.linalg.Vector[]" #-}
 VectorArray = VectorArray (Object# VectorArray)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.clustering.ExpectationSum" #-}
 ExpectationSum = ExpectationSum (Object# ExpectationSum)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.clustering.GaussianMixture" #-}
 GaussianMixture = GaussianMixture (Object# GaussianMixture)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.clustering.GaussianMixtureModel" #-}
 GaussianMixtureModel = GaussianMixtureModel (Object# GaussianMixtureModel)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.stat.distribution.MultivariateGaussian[]" #-}
 MultivariateGaussianArray = MultivariateGaussianArray (Object# MultivariateGaussianArray)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.clustering.KMeans" #-}
 KMeans = KMeans (Object# KMeans)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.clustering.KMeansModel" #-}
 KMeansModel = KMeansModel (Object# KMeansModel)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.clustering.LDA" #-}
 LDA = LDA (Object# LDA)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.clustering.LDAUtils" #-}
 LDAUtils = LDAUtils (Object# LDAUtils)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.clustering.LocalKMeans" #-}
 LocalKMeans = LocalKMeans (Object# LocalKMeans)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.clustering.LocalLDAModel" #-}
 LocalLDAModel = LocalLDAModel (Object# LocalLDAModel)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.clustering.PowerIterationClustering" #-}
 PowerIterationClustering = PowerIterationClustering (Object# PowerIterationClustering)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.clustering.PowerIterationClusteringModel" #-}
 PowerIterationClusteringModel = PowerIterationClusteringModel (Object# PowerIterationClusteringModel)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.clustering.PowerIterationClustering$Assignment" #-}
 Assignment = Assignment (Object# Assignment)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.clustering.StreamingKMeans" #-}
 StreamingKMeans = StreamingKMeans (Object# StreamingKMeans)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.clustering.StreamingKMeansModel" #-}
 StreamingKMeansModel = StreamingKMeansModel (Object# StreamingKMeansModel)
  deriving Class

data {-# CLASS "org.apache.spark.streaming.dstream.DStream" #-}
 DStream t = DStream (Object# (DStream t))
  deriving Class

data {-# CLASS "org.apache.spark.streaming.dstream.JavaDStream" #-}
 JavaDStream t = JavaDStream (Object# (JavaDStream t))
  deriving Class

data {-# CLASS "org.apache.spark.graphx.Graph" #-}
 Graph vd ed = Graph (Object# (Graph vd ed))
  deriving Class

data {-# CLASS "org.apache.spark.mllib.evaluation.AreaUnderCurve" #-}
 AreaUnderCurve = AreaUnderCurve (Object# AreaUnderCurve)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.evaluation.BinaryClassificationMetrics" #-}
 BinaryClassificationMetrics = BinaryClassificationMetrics (Object# BinaryClassificationMetrics)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.evaluation.MulticlassMetrics" #-}
 MulticlassMetrics = MulticlassMetrics (Object# MulticlassMetrics)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.evaluation.MultilabelMetrics" #-}
 MultilabelMetrics = MultilabelMetrics (Object# MultilabelMetrics)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.evaluation.RankingMetrics" #-}
 RankingMetrics t = RankingMetrics (Object# (RankingMetrics t))
  deriving Class

data {-# CLASS "org.apache.spark.mllib.evaluation.RegressionMetrics" #-}
 RegressionMetrics = RegressionMetrics (Object# MultilabelMetrics)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.evaluation.binary.FalsePositiveRate" #-}
 FalsePositiveRate = FalsePositiveRate (Object# FalsePositiveRate)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.evaluation.binary.Precision" #-}
 Precision = Precision (Object# Precision)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.evaluation.binary.Recall" #-}
 Recall = Recall (Object# Recall)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.feature.ChiSqSelector" #-}
 ChiSqSelector = ChiSqSelector (Object# ChiSqSelector)
  deriving Class

data {-# CLASS "org.apache.spark.mllib.feature.ChiSqSelectorModel" #-}
 ChiSqSelectorModel = ChiSqSelectorModel (Object# ChiSqSelectorModel)
  deriving Class
