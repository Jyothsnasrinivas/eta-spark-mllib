{-# LANGUAGE DataKinds #-}

module Spark.MLlib.Regression where

import Java
import Spark.MLlib.Types
import Spark.Core

-- Start org.apache.spark.mllib.regression.GeneralizedLinearModel

foreign import java unsafe intercept :: (b <: GeneralizedLinearModel)
  => Java b Double

foreign import java unsafe predict :: (b <: GeneralizedLinearModel)
  => RDD Vector -> Java b (RDD Object)

foreign import java unsafe "predict" predict2 :: (b <: GeneralizedLinearModel)
  => Vector -> Java b Double

foreign import java unsafe weights :: (b <: GeneralizedLinearModel)
  => Java b Vector

-- End org.apache.spark.mllib.regression.GeneralizedLinearModel

-- Start org.apache.spark.mllib.regression.GeneralizedLinearAlgorithm

foreign import java unsafe
  getNumFeatures :: (b <: GeneralizedLinearAlgorithm m, m <: GeneralizedLinearModel)
  => Java b Int

foreign import java unsafe
  isAddIntercept :: (b <: GeneralizedLinearAlgorithm m, m <: GeneralizedLinearModel)
  => Java b Bool

foreign import java unsafe
  run :: (b <: GeneralizedLinearAlgorithm m, m <: GeneralizedLinearModel)
  => RDD LabeledPoint -> Java b m

foreign import java unsafe "run"
  runVector :: (b <: GeneralizedLinearAlgorithm m, m <: GeneralizedLinearModel)
  => RDD LabeledPoint -> Vector -> Java b m

foreign import java unsafe
  setIntercept :: (b <: GeneralizedLinearAlgorithm m, m <: GeneralizedLinearModel)
  => Bool -> Java b (GeneralizedLinearAlgorithm m)

foreign import java unsafe
  setValidateData :: (b <: GeneralizedLinearAlgorithm m, m <: GeneralizedLinearModel)
  => Bool -> Java b (GeneralizedLinearAlgorithm m)

-- End org.apache.spark.mllib.regression.GeneralizedLinearAlgorithm

-- Start org.apache.spark.mllib.regression.LabeledPoint

foreign import java unsafe features :: Java LabeledPoint Vector

foreign import java unsafe label :: Java LabeledPoint Double

-- End org.apache.spark.mllib.regression.LabeledPoint
