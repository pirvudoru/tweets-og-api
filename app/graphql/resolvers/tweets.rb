module Resolvers
  class Tweets < BaseResolver
    type [ Types::Tweet ], null: false

    def resolve
      Tweet.all
    end
  end
end
