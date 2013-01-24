$:.unshift(File.expand_path('../../lib', __FILE__))

Bundler.require(:default, :test)

require 'flipper-rails'
