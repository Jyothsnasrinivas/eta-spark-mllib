module Spark.MLlib.Fpm where

import Java
import Java.Array


-- Start org.apache.spark.mllib.fpm.AssociationRules

foreign import java unsafe run :: (item <: Object)
  => JavaRDD (FreqItemset item) -> Java AssociationRules (JavaRDD Rule)

foreign import java unsafe setMinConfidence :: Double -> Java AssociationRules AssociationRules

-- End org.apache.spark.mllib.fpm.AssociationRules

-- Start org.apache.spark.mllib.fpm.AssociationRules.Rule

foreign import java unsafe antecedent :: (item <: Object) => Java (Rule item) Object

foreign import java unsafe confidence :: (item <: Object) => Java (Rule item) Double

foreign import java unsafe consequent :: (item <: Object) => Java (Rule item) Object

foreign import java unsafe javaAntecedent :: (item <: Object) => Java (Rule item) (List item)

foreign import java unsafe javaConsequent :: (item <: Object) => Java (Rule item) (List item)

-- End org.apache.spark.mllib.fpm.AssociationRules.Rule

-- Start org.apache.spark.mllib.fpm.AssociationRules.FreqItemset

foreign import java unsafe freq :: (item <: Object) => Java (FreqItemset item) Int64

foreign import java unsafe items :: (item <: Object) => Java (FreqItemset item) Object

foreign import java unsafe javaItems :: (item <: Object) => Java (FreqItemset item) (List item)

-- End org.apache.spark.mllib.fpm.AssociationRules.FreqItemset
