# frozen_string_literal: true

module Mutations
  class TweetCreate < Mutations::BaseMutation
    argument :content, String, required: true

    field :tweet, Types::Tweet, null: false

    def resolve(content:)
      tweet = Tweet.create!(content: content)

      {
        tweet: tweet
      }
    end
  end
end
