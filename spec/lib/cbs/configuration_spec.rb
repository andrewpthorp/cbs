require 'spec_helper'

describe CBS::Configuration do

  describe '.configure' do
    it 'lets you configure options' do
      CBS.configure do |config|
        config.sport = 'tennis'
        config.timeout = 1
        config.open_timeout = 20
      end

      client = CBS::Client.new
      expect(client.sport).to eq('tennis')
      expect(client.timeout).to eq(1)
      expect(client.open_timeout).to eq(20)
    end
  end

  describe '.reset!' do
    it 'resets options to their default' do
      CBS.configure do |config|
        config.sport = 'swimming'
      end
      CBS.reset!

      client = CBS::Client.new
      expect(client.sport).to be_nil
    end
  end

  describe '.options' do
    it 'returns the options' do
      expect(CBS.options).to eq({
        timeout: 30,
        open_timeout: 10,
        sport: nil,
      })
    end
  end
end
