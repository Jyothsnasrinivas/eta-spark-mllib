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
