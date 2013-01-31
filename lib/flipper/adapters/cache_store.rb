module Flipper
  module Adapters
    class CacheStore
      def initialize(cache_store)
        @cache_store = cache_store
      end

      def read(key)
        @cache_store.read(key.to_s).dup
      end

      def write(key, value)
        @cache_store.write key.to_s, value
      end

      def delete(key)
        @cache_store.delete key.to_s
      end

      def set_add(key, value)
        ensure_set_initialized(key)
        set = read(key)
        set.add value
        write(key, set)
      end

      def set_delete(key, value)
        ensure_set_initialized(key)
        set = read(key)
        set.delete value
        write(key, set)
      end

      def set_members(key)
        ensure_set_initialized(key)
        read(key)
      end

      private
      def ensure_set_initialized(key)
        @cache_store.fetch(key) { Set.new } 
      end
    end
  end
end
