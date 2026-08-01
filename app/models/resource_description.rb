class ResourceDescription < ApplicationRecord
  belongs_to :image
  belongs_to :tweet, primary_key: :uuid
end
