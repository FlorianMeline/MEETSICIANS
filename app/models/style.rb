class Style < ApplicationRecord
  STYLE_NAMES = %w[metal punk alternative grunge hard-rock symphonic pop-rock country rock]

  has_many :bands
  has_many :users
  validates :name, inclusion: STYLE_NAMES
end
