require 'faraday'
require 'cbs/version'

module CBS

  module Configuration

    VALID_OPTIONS_KEYS = [:timeout, :open_timeout, :sport].freeze
    attr_accessor *VALID_OPTIONS_KEYS

    def self.extended(base)
      base.reset
    end

    def configure
      yield self
    end

    def options
      VALID_OPTIONS_KEYS.inject({}){|o,k| o.merge!(k => send(k)) }
    end

    def reset
      self.timeout        = 30
      self.open_timeout   = 10
      self.sport          = nil
    end
  end
end
