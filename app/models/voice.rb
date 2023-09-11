class Voice < ApplicationRecord
  belongs_to :user
  validates :script, presence: true
end
