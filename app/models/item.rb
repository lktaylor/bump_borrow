class Item < ActiveRecord::Base
  belongs_to :category
  has_many :reservations
  validates :name, :presence => true
  validates :category, :presence => true
  validates :size, :presence => true
  validates :color, :presence => true
  validates :price, :presence => true
  validates :reservation, :presence => true
end
