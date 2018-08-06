
## Scrapping Tweets from Twitter

library(twitteR)
library(ROAuth)
library(RCurl)
library(dplyr)
library(httr)

## Connecting to twitter
consumer_key = "VMQxRjB4wbVLcnfMi7OXnRey0"
 consumer_secret = "wYBTYQll30KiVxHCPnGM0UJ3fUM7iN20zUftzqdx4KixUsNBQK"
 access_token = "4891478773-xiIUsV3YQEiZrlGCvreyge4h3js1bPAPzE6boN6"
 access_secret = "tE9esoWVYFvqB2P7p4dZEZ5X4ePeFI6RNc6SbPGkfE8c4"
 
   setup_twitter_oauth(consumer_key,consumer_secret,access_token,access_secret)

#Getting tweets with hashtag name
 gst = searchTwitter("Canada",n=100,lang="en",since='2017-06-1')
 
#Converting  it to a dataframe
 tweet = twListToDF(gst)
dim(tweet) 

#GEtting tweets with handler name.Lets extract tweets of modi's twitter handle
modi = userTimeline("@PMOIndia",n=1000)
modi_tweet = twListToDF(modi)
View(modi_tweet)
