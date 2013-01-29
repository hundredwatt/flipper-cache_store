flipper-cache\_store
==============

Flipper adapter for ActiveSupport::Cache::Store children

Currently only works with Flipper 0.2.\*

Installation
============

Add to your Gemfile:

`gem 'flipper-cache_store', '~> 0.0.1'`


Examples
========

With MemoryStore:

```ruby
  cache = ActiveSupport::Cache::MemoryStore.new
  adapter = Flipper::Adapters::CacheStore.new(cache)
  Flipper.new(adapter)
```


Use it with your Rails cache!:

```ruby
  # config/initializers/flipper.rb
  Rails.instance_eval do
    def flipper
      @flipper ||= begin
        adapter = Flipper::Adapters::CacheStore.new(Rails.cache)
        Flipper.new(adapter)
      end
    end
  end

  # elsewhere
  Rails.flipper
```
NOTE: if Rails.cache is an LRU cache, be warying of potential key
expiration issues



TODO
====

Flipper 0.3 support
