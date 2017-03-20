# CBS Sports

Simply Ruby Wrapper for the CBS Sports API

## Installation

    gem install cbs

## Usage

You can configure the client globally:

    CBS.configure do |c|
      c.sport = 'football'
    end

    cbs = CBS::Client.new

... or locally:

    cbs = CBS::Client.new(sport: 'baseball')

... or on a per-request basis:

    cbs = CBS::Client.new
    cbs.players(sport: 'hockey')

To list players:

    cbs.players(sport: 'baseball')

To search for a player:

    cbs.player_search('Carson Wentz', sport: 'football')

To get a player profile:

    # Carson Wentz player `id` is '1907522'
    cbs.profile(1907522)

To list teams:

    cbs.teams(sport: 'football')
