# frozen_string_literal: true

module Mutations
  class TweetCreate < Mutations::BaseMutation
    argument :content, String, required: true

    field :tweet, Types::Tweet, null: false

    def resolve(content:)
      {
        tweet: {
          uuid: "1231-1231-1231-1231"
        }
      }
    end
  end
end
