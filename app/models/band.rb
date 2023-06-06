class Band < ApplicationRecord
  has_one_attached :photo
  belongs_to :style
  has_many :instruments, through: :users
  has_many :chatrooms
  # Validation #
  validates :name, :bio, :city, presence: true
  validates :name, uniqueness: true
  validates :name, length: { minimum: 3 }
  validates :bio, length: { minimum: 50 }
end
