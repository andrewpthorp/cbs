require 'cbs/client'

module CBS
  extend Configuration

  class << self

    def new(opts={})
      CBS::Client.new(opts)
    end

  end
end
