class User < ApplicationRecord
  include PgSearch::Model
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :style
  belongs_to :instrument
  has_many :messages
  belongs_to :band, optional: true
  has_many :chatrooms, through: :messages
  has_one_attached :avatar
  # Validation #
  validates :first_name, :last_name, :bio, :city, :instrument, presence: true
  validates :bio, length: { minimum: 50 }

  pg_search_scope :search_by_name,
  against: [:first_name, :last_name],
  using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
  def band_chatrooms
    return nil unless band

    band.chatrooms.joins(:messages).where.not(messages: {content: nil}).uniq
  end

  def chatrooms_joined
    Chatroom.joins(:messages).where(messages: { user: self }).where.not(id: band_chatrooms&.pluck(:id)).uniq
  end
end
