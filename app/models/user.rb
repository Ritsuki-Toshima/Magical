class User < ApplicationRecord
  has_many :voices, :feeds
  has_many :favorites, through: :feeds
  validates :name, :username, :email, :nationality, presence: true
end
