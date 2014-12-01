class Reservation < ActiveRecord::Base
  has_many :items
end
