class Tweet < ApplicationRecord
  self.primary_key = :uuid

  alias_attribute :message, :content

  has_many :resource_descriptions

  def resources
    []
  end
end
