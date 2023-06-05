class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :style
  belongs_to :instrument
  has_many :messages
  belongs_to :band
  has_many :chatroom, through: :messages
end
