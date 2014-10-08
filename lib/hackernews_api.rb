require "hackernews_api/version"
require 'rest_client'

module HackernewsApi
  API_URL = "https://hacker-news.firebaseio.com"
  API_VERSION = "v0"

  autoload :Client, 'hackernews_api/client'
  autoload :Story,  'hackernews_api/story'
  autoload :Comment,  'hackernews_api/comment'
  autoload :Poll,  'hackernews_api/poll'
  autoload :PollOpt,  'hackernews_api/poll_opt'
end
