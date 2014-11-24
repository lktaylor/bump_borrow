class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps

    end
  end
end
