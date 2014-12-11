class Reservation < ActiveRecord::Base
  belongs_to :item
  # validate :availability
end
