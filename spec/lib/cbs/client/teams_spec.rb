require 'spec_helper'

describe CBS::Client::Teams do
  before do
    @client = CBS::Client.new(sport: 'football')
  end

  describe '#teams', :vcr do
    it 'should get a list of teams' do
      teams = @client.teams
      expect(teams).to be_a(Hashie::Array)

      team = teams.find{|t| t.abbr == 'PHI'}
      expect(team).to be_a(Hashie::Mash)
      expect(team.conf).to eq('NFC')
      expect(team.name).to eq('Philadelphia')
      expect(team.nickname).to eq('Eagles')
    end
  end

end
