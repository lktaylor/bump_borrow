class Reservation < ActiveRecord::Base
  belongs_to :item
  validate :availability
  def availability check for reserve_start and reserve_end if item = x
end
end
