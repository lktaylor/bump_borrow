class Item < ActiveRecord::Base
  belongs_to :category
  validates :name, :presence => true
  validates :category, :presence => true
  validates :size, :presence => true
  validates :color, :presence => true
  validates :price, :presence => true
end
