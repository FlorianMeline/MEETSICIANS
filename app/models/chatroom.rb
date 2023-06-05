class Chatroom < ApplicationRecord
  belongs_to :band
  has_many :messages
end
