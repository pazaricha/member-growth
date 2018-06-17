class CreateOffices < ActiveRecord::Migration[5.2]
  def change
    create_table :offices do |t|
      t.string :building_name
      t.string :floor_number
      t.string :desks_count
      t.integer :account_id

      t.timestamps
    end

    add_index :offices, :account_id
  end
end
