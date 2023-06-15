class Chatroom < ApplicationRecord
  belongs_to :band
  has_many :messages
  has_many :users, through: :messages
  has_one :last_message, -> { last_messages }, class_name: "Message", dependent: :destroy, inverse_of: :chatroom

  # scope :unread_chatrooms, lambda { |user|
  #   subquery = Message.select("DISTINCT ON (chatroom_id) messages.*").
  #     order(:chatroom_id, id: :desc).
  #     to_sql

  #   includes(:messages, :last_message).
  #     joins("LEFT JOIN (#{subquery}) AS last_messages ON chatrooms.id = last_messages.chatroom_id").
  #     where.not("last_messages.user_id = ?", user.id).
  #     group("chatrooms.id", "last_messages.id", "last_messages.chatroom_id").
  #     order("chatrooms.id DESC")
  # }
end
