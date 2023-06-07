class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :style
  belongs_to :instrument
  has_many :messages
  belongs_to :band
  has_many :chatrooms, through: :messages
  has_one_attached :avatar
  # Validation #
  validates :first_name, :last_name, :bio, :city, :instrument, presence: true
  validates :bio, length: { minimum: 50 }

  def band_chatrooms
    return nil unless band

    band.chatrooms.joins(:messages).where.not(messages: {content: nil}).uniq
  end

  def chatrooms_joined
    Chatroom.joins(:messages).where(messages: { user: self }).where.not(id: band_chatrooms&.pluck(:id)).uniq
  end
end
