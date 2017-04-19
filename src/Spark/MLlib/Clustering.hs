{-# LANGUAGE DataKinds #-}

module Spark.MLlib.Clustering where

import Java
import Java.Array
import Java.Primitive
import Java.Wrappers
import Spark.MLlib.Types
import Spark.Core

-- Start org.apache.spark.mllib.clustering.BisectingKMeans

foreign import java unsafe getK :: Java BisectingKMeans Int

foreign import java unsafe getMaxIterations :: Java BisectingKMeans Int

foreign import java unsafe getMinDivisibleClusterSize :: Java BisectingKMeans Double

foreign import java unsafe getSeed :: Java BisectingKMeans Int64

foreign import java unsafe run :: JavaRDD Vector -> Java BisectingKMeans BisectingKMeansModel

foreign import java unsafe "run"
  runRDD :: RDD Vector -> Java BisectingKMeans BisectingKMeansModel

foreign import java unsafe setK :: Int -> Java BisectingKMeans BisectingKMeans

foreign import java unsafe setMaxIterations :: Int -> Java BisectingKMeans BisectingKMeans

foreign import java unsafe setMinDivisibleClusterSize :: Double
  -> Java BisectingKMeans BisectingKMeans

foreign import java unsafe setSeed :: Int64 -> Java BisectingKMeans BisectingKMeans

-- End org.apache.spark.mllib.clustering.BisectingKMeans

-- Start org.apache.spark.mllib.clustering.BisectingKMeansModel

foreign import java unsafe clusterCenters :: Java BisectingKMeansModel VectorArray

foreign import java unsafe computeCost :: JavaRDD Vector
  -> Java BisectingKMeansModel Double

foreign import java unsafe "computeCost" computeCostRDD :: RDD Vector
  -> Java BisectingKMeansModel Double

foreign import java unsafe "computeCost" computeCostVector :: Vector
  -> Java BisectingKMeansModel Double

foreign import java unsafe k :: Java BisectingKMeansModel Int

foreign import java unsafe predict :: JavaRDD Vector
  -> Java BisectingKMeansModel (JavaRDD JInteger)

foreign import java unsafe "predict" predictRDD :: RDD Vector
  -> Java BisectingKMeansModel (RDD Object)

foreign import java unsafe "predict" predictVector :: Vector
  -> Java BisectingKMeansModel Int

foreign import java unsafe save :: SparkContext -> String
  -> Java BisectingKMeansModel ()

-- End org.apache.spark.mllib.clustering.BisectingKMeansModel

-- Start org.apache.spark.mllib.clustering.LDAModel

foreign import java unsafe docConcentration :: Java LDAModel Vector

foreign import java unsafe "k" kLDAModel :: Java LDAModel Int

foreign import java unsafe topicConcentration :: Java LDAModel Double

foreign import java unsafe topicsMatrix :: Java LDAModel Matrix

foreign import java unsafe vocabSize :: Java LDAModel Int

-- End org.apache.spark.mllib.clustering.LDAModel

-- Start org.apache.spark.mllib.clustering.DistributedLDAModel

type instance Inherits DistributedLDAModel = '[LDAModel]

foreign import java unsafe logLikelihood :: Java DistributedLDAModel Double

foreign import java unsafe logPrior :: Java DistributedLDAModel Double

foreign import java unsafe toLocal :: Java DistributedLDAModel LocalLDAModel

-- End org.apache.spark.mllib.clustering.DistributedLDAModel

-- Start org.apache.spark.mllib.clustering.ExpectationSum

foreign import java unsafe "k" kExpectationSum :: Java ExpectationSum Int

foreign import java unsafe "logLikelihood"
  logLikelihoodExpectationSum :: Java ExpectationSum Double

foreign import java unsafe weights :: Java ExpectationSum JDoubleArray

-- End org.apache.spark.mllib.clustering.ExpectationSum

-- Start org.apache.spark.mllib.clustering.GaussianMixture

foreign import java unsafe getConvergenceTol :: Java GaussianMixture Double

foreign import java unsafe "getK" getKGM :: Java GaussianMixture Int

foreign import java unsafe "getMaxIterations" getMaxIterationsGM :: Java GaussianMixture Int

foreign import java unsafe "getSeed" getSeedGM :: Java GaussianMixture Int64

foreign import java unsafe "run" runGM :: JavaRDD Vector -> Java GaussianMixture GaussianMixtureModel

foreign import java unsafe "run"
  runRDDGM :: RDD Vector -> Java GaussianMixture GaussianMixtureModel

foreign import java unsafe setConvergenceTol :: Double -> Java GaussianMixture GaussianMixture

foreign import java unsafe "setK" setKGM :: Int -> Java GaussianMixture GaussianMixture

foreign import java unsafe "setMaxIterations"
  setMaxIterationsGM :: Int -> Java GaussianMixture GaussianMixture

foreign import java unsafe "setSeed"
  setSeedGM :: Int64 -> Java GaussianMixture GaussianMixture

-- End org.apache.spark.mllib.clustering.GaussianMixture

-- Start org.apache.spark.mllib.clustering.GaussianMixtureModel

foreign import java unsafe gaussians :: Java GaussianMixtureModel MultivariateGaussianArray

foreign import java unsafe "k" kGMM :: Java GaussianMixtureModel Int

foreign import java unsafe "predict" predictGMM :: JavaRDD Vector
  -> Java GaussianMixtureModel (JavaRDD JInteger)

foreign import java unsafe "predict" predictRDDGMM :: RDD Vector
  -> Java GaussianMixtureModel (RDD Object)

foreign import java unsafe "predict" predictVector :: Vector
  -> Java GaussianMixtureModel Int

foreign import java unsafe "save" saveGMM :: SparkContext -> String
  -> Java GaussianMixtureModel ()

-- End org.apache.spark.mllib.clustering.GaussianMixtureModel

-- Start org.apache.spark.mllib.clustering.KMeans

foreign import java unsafe getEpsilon :: Java KMeans Double

foreign import java unsafe getInitializationMode :: Java KMeans String

foreign import java unsafe getInitializationSteps :: Java KMeans Int

foreign import java unsafe "getK" getKKMeans :: Java KMeans Int

foreign import java unsafe "getMaxIterations" getMaxIterationsKMeans :: Java KMeans Int

foreign import java unsafe "getSeed" getSeedKMeans :: Java KMeans Int64

foreign import java unsafe "run" runKMeans :: RDD Vector -> Java KMeans KMeansModel

foreign import java unsafe setEpsilon :: Double -> Java KMeans KMeans

foreign import java unsafe setInitializationMode :: String -> Java KMeans KMeans

foreign import java unsafe setInitializationSteps :: Int -> Java KMeans KMeans

foreign import java unsafe setInitialModel :: KMeansModel -> Java KMeans KMeans

foreign import java unsafe "setK" setKKMeans :: Int -> Java KMeans KMeans

foreign import java unsafe "setMaxIterations" setMaxIterationsKMeans :: Int -> Java KMeans KMeans

foreign import java unsafe "setSeed" setSeedKMeans :: Int64 -> Java KMeans KMeans

-- End org.apache.spark.mllib.clustering.KMeans

-- Start org.apache.spark.mllib.clustering.KMeansModel

foreign import java unsafe "clusterCenters" clusterCentersKMM :: Java KMeansModel VectorArray

foreign import java unsafe "computeCost" computeCostRDD :: RDD Vector
  -> Java KMeansModel Double

foreign import java unsafe k :: Java BisectingKMeansModel Int

foreign import java unsafe predict :: JavaRDD Vector
  -> Java KMeansModel (JavaRDD JInteger)

foreign import java unsafe "predict" predictRDD :: RDD Vector
  -> Java KMeansModel (RDD Object)

foreign import java unsafe "predict" predictVector :: Vector
  -> Java KMeansModel Int

foreign import java unsafe save :: SparkContext -> String
  -> Java KMeansModel ()

-- End org.apache.spark.mllib.clustering.KMeansModel

-- Start org.apache.spark.mllib.clustering.LDA

foreign import java unsafe getAlpha :: Java LDA Double

foreign import java unsafe getAsymmetricAlpha :: Java LDA Vector

foreign import java unsafe getAsymmetricDocConcentration :: Java LDA Vector

foreign import java unsafe getBeta :: Java LDA Double

foreign import java unsafe getCheckpointInterval :: Java LDA Int

foreign import java unsafe getDocConcentration :: Java LDA Double

foreign import java unsafe "getK" getKLDA :: Java LDA Int

foreign import java unsafe "getMaxIterations" getMaxIterationsLDA :: Java LDA Int

foreign import java unsafe "getSeed" getSeedLDA :: Java LDA Int64

foreign import java unsafe getTopicConcentration :: Java LDA Double

foreign import java unsafe "run" runLDA :: JavaPairRDD JLong Vector -> Java LDA LDAModel

foreign import java unsafe setAlpha :: Double -> Java LDA LDA

foreign import java unsafe "setAlpha" setAlphaVector :: Vector -> Java LDA LDA

foreign import java unsafe setBeta :: Double -> Java LDA LDA

foreign import java unsafe setCheckpointInterval :: Int -> Java LDA LDA

foreign import java unsafe setDocConcentration :: Double -> Java LDA LDA

foreign import java unsafe "setDocConcentration"
  setDocConcentrationVector :: Vector -> Java LDA LDA

foreign import java unsafe "setK" setKLDA :: Int -> Java LDA LDA

foreign import java unsafe "setMaxIterations" setMaxIterationsLDA :: Int -> Java LDA LDA

foreign import java unsafe "setSeed" setSeedLDA :: Int64 -> Java LDA LDA

foreign import java unsafe setTopicConcentration :: Double -> Java LDA LDA

-- End org.apache.spark.mllib.clustering.LDA

-- Start org.apache.spark.mllib.clustering.LocalLDAModel

type instance Inherits LocalLDAModel = '[LDAModel]

-- End org.apache.spark.mllib.clustering.LocalLDAModel
