require 'rails_helper'

RSpec.describe GraphqlController, type: :request do
  describe 'tweetCreate' do
    it 'returns success' do
      query = <<~GQL
        mutation($input: TweetCreateInput!) {
            tweetCreate(input: $input) {
                tweet {
                    uuid
                }
            }
        }
      GQL

      variables = {
        "input": {
          "content": "Best thing I found in a while: https://12ft.io/"
        }
      }

      post '/graphql', params: { query: query, variables: variables }

      expect(response).to have_http_status(:ok)

      parsed_body = JSON.parse(response.body)
      expect(parsed_body['data']["tweetCreate"]["tweet"]["uuid"]).to be_present
    end
  end
end
