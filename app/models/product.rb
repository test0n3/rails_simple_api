class Product < ApplicationRecord
  validates :name, presence: true, length: { maximum: 40 }
  validates :vendor, length: { maximum: 100 }
  # validates :price, presence: true, numericality: { only_integer: true }
  validate :correct_price
  # validates :currency, presence: true
  validate :correct_currency
  # validates :stock, presence: true
  validate :correct_stock


  private
  def correct_currency
    errors.add(:currency, "incorrect value") unless currency == 'USD' || currency == 'EUR'   
  end

  def correct_price
    errors.add(:price, "incorrect value") unless price.is_a? Integer && price >= 0
  end

  def correct_stock
    errors.add(:stock, "incorrect value") unless stock.is_a? Integer && stock >= 0
  end
end
