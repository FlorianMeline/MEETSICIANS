class Chatroom < ApplicationRecord
  belongs_to :band
  has_many :messages
  has_many :users, through: :messages
end
