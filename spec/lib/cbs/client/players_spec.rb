require 'spec_helper'

describe CBS::Client::Players do
  PLAYER_ID = '1907522'

  before do
    @client = CBS::Client.new(sport: 'football')
  end

  describe '#players', :vcr do
    it 'should get a list of players' do
      players = @client.players

      expect(players).to be_a(Hashie::Array)
      expect(players.count).to eq(3360)

      player = players.find{|p| p.id == PLAYER_ID}

      expect(player).to be_a(Hashie::Mash)
      expect(player.firstname).to eq('Carson')
      expect(player.lastname).to eq('Wentz')
      expect(player.position).to eq('QB')
      expect(player.pro_status).to eq('A')
      expect(player.pro_team).to eq('PHI')
    end
  end

  describe '#profile', :vcr do
    it 'should get a player profile' do
      profile = @client.profile(PLAYER_ID)

      expect(profile).to be_a(Hashie::Mash)
      expect(profile.firstname).to eq('Carson')
      expect(profile.lastname).to eq('Wentz')
      expect(profile.position).to eq('QB')
      expect(profile.pro_status).to eq('A')
      expect(profile.pro_team).to eq('PHI')
    end
  end

  describe '#player_search', :vcr do
    it 'should search for a player' do
      results = @client.player_search('Carson Wentz')

      expect(results).to be_a(Hashie::Array)
      expect(results.count).to eq(1)

      player = results.find{|p| p.id == PLAYER_ID}
      expect(player).to be_a(Hashie::Mash)
      expect(player.firstname).to eq('Carson')
      expect(player.lastname).to eq('Wentz')
      expect(player.position).to eq('QB')
      expect(player.pro_status).to eq('A')
      expect(player.pro_team).to eq('PHI')
    end
  end

end
