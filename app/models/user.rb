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
  # Validation #
  validates :first_name, :last_name, :bio, :city, :instrument, presence: true
  validates :bio, length: { minimum: 50 }
end
