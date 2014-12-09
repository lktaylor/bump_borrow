class ChangeDatesToString < ActiveRecord::Migration
  def change
    remove_column :reservations, :reserve_start
    remove_column :reservations, :reserve_end

    add_column :reservations, :reserve_start, :date
    add_column :reservations, :reserve_end, :date
  end
end
