{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -Wno-deferred-out-of-scope-variables #-}
module Handler.PostDetails where

import Import

getPostDetailsR :: BlogPostId -> Handler Html
getPostDetailsR blogPostId = do
    blogPost <- runDB $ get404 blogPostId
    defaultLayout $ do 
        $(widgetFile "postDetails/post")
