require 'cbs/request'
require 'cbs/configuration'
require 'cbs/client/players'
require 'cbs/client/teams'

module CBS
  class Client

    attr_accessor :timeout
    attr_accessor :open_timeout
    attr_accessor :sport

    def initialize(opts={})
      options = CBS.options.merge(opts)
      Configuration::VALID_OPTIONS_KEYS.each do |key|
        send("#{key}=", options[key])
      end
    end

    def api_url
      "http://api.cbssports.com/fantasy/"
    end

    include CBS::Request
    include CBS::Client::Players
    include CBS::Client::Teams

  end
end
