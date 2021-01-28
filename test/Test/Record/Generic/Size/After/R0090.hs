{-# LANGUAGE CPP             #-}
{-# LANGUAGE TemplateHaskell #-}

#if PROFILE_GEN_CODE
{-# OPTIONS_GHC -fplugin=GhcDump.Plugin #-}
#endif

module Test.Record.Generic.Size.After.R0090 where

import Data.Aeson (ToJSON(..))

import Data.Record.Generic.JSON
import Data.Record.Generic.TH

import Test.Record.Generic.Size.Infra

largeRecord defaultLazyOptions (recordOfSize 90)

instance ToJSON R where
  toJSON = gtoJSON