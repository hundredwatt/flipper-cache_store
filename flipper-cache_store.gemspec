# -*- encoding: utf-8 -*-
require File.expand_path('../lib/flipper/adapters/cache_store/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors = ["Jason Nochlin"]
  gem.description = "Use ActiveSupport::Cache::Store as the backend for Flipper (https://github.com/jnunemaker/flipper)"
  gem.email = ["hundredwatt@gmail.com"]
  gem.homepage = "http://github.com/hundredwatt/flipper-cache_store"
  gem.summary = "Use ActiveSupport::Cache::Store as the backend for Flipper"

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name = "flipper-cache_store"
  gem.require_paths = ["lib"]
  gem.version       = Flipper::Adapters::CacheStore::VERSION
  gem.add_dependency 'flipper', '~> 0.2.0'
  gem.add_dependency 'activesupport', '>= 3.0'
end
