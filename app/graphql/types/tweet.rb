# frozen_string_literal: true

module Types
  class Tweet < Types::BaseObject
    field :uuid, ID, null: false
  end
end
