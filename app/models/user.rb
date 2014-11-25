class User < ActiveRecord::Base
  has_many :items, :through => :categories
  has_many :categories
end