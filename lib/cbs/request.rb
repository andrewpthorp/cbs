require 'hashie'
require 'faraday_middleware'

module CBS
  module Request

    def get(path, opts={})
      request(:get, path, opts)
    end

    private

    def request(method, path, opts)
      response = connection(opts).send(method) do |request|
        request.url(path, opts)

        request.options[:timeout] = timeout
        request.options[:open_timeout] = open_timeout
      end

      Hashie::Mash.new(response.body)
    end

    def connection(opts={})
      options = {
        url: api_url,
        params: {
          response_format: :json,
          version: 3.0,
          SPORT: opts.fetch(:sport, sport),
        },
      }

      connection = Faraday.new(options) do |conn|
        conn.response :json
        conn.adapter Faraday.default_adapter
      end

      connection
    end

  end
end
