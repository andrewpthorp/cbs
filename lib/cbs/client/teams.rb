module CBS
  class Client
    module Teams

      def teams(opts={})
        get('pro-teams', opts).body.pro_teams
      end

    end
  end
end
