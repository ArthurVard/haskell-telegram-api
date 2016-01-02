{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE DeriveGeneric     #-}
{-# LANGUAGE DeriveAnyClass    #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeOperators     #-}
{-# LANGUAGE TemplateHaskell   #-}

module Main where

import Control.Monad
import Telegram.API.Bots
import Servant
import Data.Text (Text)
import qualified Data.Text.IO as T
import Network.Wai
import Network.Wai.Handler.Warp

main :: IO ()
main = do
  Right GetMeResponse { result = u } <- getMe (Token "bot179176211:AAGtOVb_YxcpK8FaJ-ixpdOKsEEy-7LINH0")
  T.putStrLn (first_name u)
--main = startApp

--startApp :: IO ()
--startApp = run 8080 app

--app :: Application
--app = serve api server
--
--server :: Server API
--server = return users
--
--users :: [User]
--users = [ User 1 "Test" (Just "Test") Nothing
--        , User 2 "TEST" (Just "TEST") Nothing
--        ]
