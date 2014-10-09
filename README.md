# HackernewsApi

This is a tiny gem that wraps around HN's API.

## Installation

Add this line to your application's Gemfile:

    gem 'hackernews_api'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hackernews_api

## Usage

Fetching users by id:
```User.fetch(123)```

Fetching stories:
```Story.fetch(123)```

Fetching comment:
```Comment.fetch(123)```

Fetching poll:
```Poll.fetch(123)```

All of the fetch actions return adequate entities based on the fetch.
For example, ```Story.fetch(<some-id-here>)``` will return a ```Story``` object.

## Versioning
The gem version will **always** follow the API version. Right now, while the API is v0, the gem will have a version of 0.x.x.
When YC update the API, the new gem will be released under the same version.

## Contributing

1. Fork it ( http://github.com/fteem/hackernews_api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
