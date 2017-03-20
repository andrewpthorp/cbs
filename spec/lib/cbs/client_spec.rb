require 'spec_helper'

describe CBS::Client do

  describe '#new' do
    it 'should set configuration options' do
      client = CBS::Client.new(timeout: 5, open_timeout: 10, sport: 'somesport')
      expect(client.timeout).to eq(5)
      expect(client.open_timeout).to eq(10)
      expect(client.sport).to eq('somesport')
    end
  end

  describe '#api_url' do
    it 'should equal the cbs api base url' do
      client = CBS::Client.new
      expect(client.api_url).to eq('http://api.cbssports.com/fantasy/')
    end
  end

end
