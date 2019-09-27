# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   tapioca generate

# typed: true

module MultiJson
  include(::MultiJson::Options)
  extend(::MultiJson)
  extend(::MultiJson::Options)

  def adapter; end
  def adapter=(new_adapter); end
  def cached_options(*_); end
  def current_adapter(options = _); end
  def decode(string, options = _); end
  def default_adapter; end
  def default_engine; end
  def default_options; end
  def default_options=(value); end
  def dump(object, options = _); end
  def encode(object, options = _); end
  def engine; end
  def engine=(new_adapter); end
  def load(string, options = _); end
  def load_adapter(new_adapter); end
  def reset_cached_options!(*_); end
  def use(new_adapter); end
  def with_adapter(new_adapter); end
  def with_engine(new_adapter); end

  private

  def load_adapter_from_string_name(name); end
end

MultiJson::ALIASES = T.let(T.unsafe(nil), Hash)

class MultiJson::AdapterError < ::ArgumentError
  def cause; end

  def self.build(original_exception); end
end

MultiJson::DecodeError = MultiJson::ParseError

MultiJson::LoadError = MultiJson::ParseError

module MultiJson::Options
  def default_dump_options; end
  def default_load_options; end
  def dump_options(*args); end
  def dump_options=(options); end
  def load_options(*args); end
  def load_options=(options); end

  private

  def get_options(options, *args); end
end

module MultiJson::OptionsCache
  extend(::MultiJson::OptionsCache)

  def fetch(type, key); end
  def reset; end

  private

  def write(cache, key); end
end

MultiJson::OptionsCache::MAX_CACHE_SIZE = T.let(T.unsafe(nil), Integer)

class MultiJson::ParseError < ::StandardError
  def cause; end
  def data; end

  def self.build(original_exception, data); end
end

MultiJson::REQUIREMENT_MAP = T.let(T.unsafe(nil), Array)

MultiJson::VERSION = T.let(T.unsafe(nil), String)

class MultiJson::Version
  def self.to_s; end
end

MultiJson::Version::MAJOR = T.let(T.unsafe(nil), Integer)

MultiJson::Version::MINOR = T.let(T.unsafe(nil), Integer)

MultiJson::Version::PATCH = T.let(T.unsafe(nil), Integer)