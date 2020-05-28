class Sheet < ApplicationRecord
  belongs_to :customer

  validates :received_date, :info, presence: true
  validates :holes, numericality: {only_integer: true, even: true, greater_than_or_equal_to: 16, less_than_or_equal_to: 48}
  validates :rim_erd, numericality: {less_than: 630, only_integer: true, greater_than: 300}
  PATTERNS = %w(RADIAL 1-CROSS 2-CROSS 3-CROSS 4-CROSS CROWS-FOOT HYBRID-CROWS-FOOT)
  validates :pattern, inclusion: {in: PATTERNS}
end
