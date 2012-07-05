{-# LANGUAGE FlexibleContexts #-}
module Database.Datalog.MagicSets where

import Control.Failure

import Database.Datalog.Database
import Database.Datalog.Errors
import Database.Datalog.Rules

-- | Returns the rules generated by the magic sets transformation
magicSetsRules :: (Failure DatalogError m)
                  => [Predicate] -- ^ Predicates used in the intensional database
                  -> Query a -- ^ The goal query
                  -> [Rule a] -- ^ The user-provided rules
                  -> m [Rule a]
magicSetsRules ipreds q rs = return rs
