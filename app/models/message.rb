class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user
  # Validation #
  validates :content, presence: true
end
