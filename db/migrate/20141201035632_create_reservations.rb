class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :reserve_start
      t.string :reserve_end
      t.string :username
      t.integer :item_id
      t.string :item_name

      t.timestamps

    end
  end
end
