class Mine < ApplicationRecord
  serialize :flags

  validates :coin, presence: true, length: { maximum: 3 }
  validates :pool, presence: true
  validates :wallet, presence: true
end
