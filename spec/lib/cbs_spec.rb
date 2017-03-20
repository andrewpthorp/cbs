require 'spec_helper'

describe CBS do

  describe '#new' do
    it 'should return a new CBS::Client' do
      client = CBS.new
      expect(client).to be_a(CBS::Client)
    end

    it 'should propagate configuration options' do
      client = CBS.new(sport: 'foosball')
      expect(client.sport).to eq('foosball')
    end
  end

end
