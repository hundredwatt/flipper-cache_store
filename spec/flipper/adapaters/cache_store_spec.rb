require 'spec_helper'
require 'flipper/adapters/cache_store'
require 'flipper/spec/shared_adapter_specs'

describe Flipper::Adapters::CacheStore do
  let(:cache_store) { ActiveSupport::Cache::MemoryStore.new }

  subject { Flipper::Adapters::CacheStore.new(cache_store) }

  def read_key(key)
    cache_store.read(key)
  end

  def write_key(key, value)
    cache_store.write(key,value)
  end

  it_should_behave_like 'a flipper adapter'
end
