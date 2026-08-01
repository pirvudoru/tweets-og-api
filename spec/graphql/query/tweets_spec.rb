require 'rails_helper'

RSpec.describe GraphqlController, type: :request do
  describe 'tweets' do
    fixtures :tweets

    it 'returns success' do
      query = <<~GQL
        query {
          tweets {
              uuid
              message
              resources {
                  title
                  description
                  url
                  image {
                      url
                  }
              }
          }
        }
      GQL

      tweet = tweets(:twelve_ft)

      post '/graphql', params: { query: query }

      expect(response).to have_http_status(:ok)

      parsed_body = JSON.parse(response.body)
      expect(parsed_body)
        .to eq({
                 "data" => {
                   "tweets" => [
                     {
                       "uuid" => tweet.uuid,
                       "message" => tweet.content,
                       "resources" => []
                     }
                   ]
                 }
               })
    end
  end
end
