class Band < ApplicationRecord
  include PgSearch::Model
  has_one_attached :photo
  belongs_to :style
  belongs_to :needed_instrument, class_name: "Instrument"
  has_many :users
  has_many :instruments, through: :users
  has_many :chatrooms
  # Validation #
  validates :name, :bio, :city, presence: true
  validates :name, uniqueness: true
  validates :name, length: { minimum: 3 }
  validates :bio, length: { minimum: 50 }
  pg_search_scope :search_by_name_city_and_need,
    against: [ :name, :city, :needed_instrument_id ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
