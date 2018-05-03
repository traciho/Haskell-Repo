{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeOperators #-}

module Server where

import Prelude ()
import Prelude.Compat

import Control.Monad.Except
import Control.Monad.Reader
import Data.Aeson.Compat
import Data.Aeson.Types
import Data.Attoparsec.ByteString
import Data.ByteString (ByteString)
import Data.List
import Data.Maybe
import Data.String.Conversions
import Data.Time.Calendar
import GHC.Generics
import Lucid
import Network.HTTP.Media ((//), (/:))
import Network.Wai
import Network.Wai.Handler.Warp
import Servant
import System.Directory
import Text.Blaze
import Text.Blaze.Html.Renderer.Utf8
import qualified Data.Aeson.Parser



data User = User
  { name :: String
  , age :: Int
  , email :: String
  , registration_date :: Day
  } deriving (Eq, Show, Generic)
  
instance ToJson User

users1 :: [User]
users1 =
  [ User "Isaac Newton" 327 "isaac@newton.co.uk" (fromGregorian 1683 3 1)
  , User "Albert Einstein" 136 "ae@m2.org"       (fromGregorian 1905 12 1)
  ]

type UserAPI1 =  "users" :> Get '[JSON] [User]

server1 :: Server UserAPI1
server1 = return Users1

--Server type family will drive the routing.
--For each endpoint handlers will by default run the Handler Monad


userAPI :: Proxy UserAPI1
userAPI = Proxy


-- 'serve' comes from servant and hands you a WAI Application,
-- which you can think of as an "abstract" web application,
-- not yet a webserver.

app1 :: Application
app1 = serve userAPI server1

main :: IO ()
main = run 8081 app1
