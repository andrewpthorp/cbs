module CBS
  class Client
    module Players

      def players(opts={})
        get('players/list', opts).body.players
      end

      def profile(player_id, opts={})
        opts.merge!(player_id: player_id)


        get('players/profile', opts).body.player_profile.player
      end

      def player_search(name, opts={}, team_name: nil)
        opts.merge!(name: name)
        opts.merge!(team_name: team_name) if team_name

        get('players/search', opts).body.players
      end

    end
  end
end
