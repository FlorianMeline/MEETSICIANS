class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user
  # Validation #
  validates :content, presence: true

  def sender?(a_user)
    user.id == a_user.id
  end

  def self.last_messages
    last_messages_id = select("max(id)").group(:chatroom_id)
    where(id: last_messages_id)
  end
end
