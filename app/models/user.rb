class User < ApplicationRecord
  has_many :voices
  has_many :feeds
  has_many :favorites, through: :feeds
  validates :username, :email, :nationality, presence: true
end
