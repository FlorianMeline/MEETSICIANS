class Band < ApplicationRecord
  belongs_to :style
  has_many :instruments, through: :users
  has_many :chatrooms
end
