class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :category_id
      t.string :size
      t.string :color
      t.integer :price
      t.datetime :created_at
      t.datetime :updated_at
      t.string :username

      t.timestamps

    end
  end
end
