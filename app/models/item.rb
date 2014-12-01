class Item < ActiveRecord::Base
  belongs_to :category
  belongs_to :reservation
  validates :name, :presence => true
  validates :category, :presence => true
  validates :size, :presence => true
  validates :color, :presence => true
  validates :price, :presence => true
  validates :reservation, :presence => true
end
