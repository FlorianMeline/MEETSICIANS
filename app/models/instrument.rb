class Instrument < ApplicationRecord
  INSTRUMENT_NAMES = %w[guitar drums piano vocal bass keyboard bagpipe other]

  has_many :bands, foreign_key: 'needed_instrument_id'

  has_many :users
  # Validation #
  validates :name, inclusion: INSTRUMENT_NAMES
end
