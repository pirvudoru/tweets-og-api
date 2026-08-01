class Tweet < ApplicationRecord
  self.primary_key = :uuid

  alias_attribute :message, :content

  def resources
    []
  end
end
