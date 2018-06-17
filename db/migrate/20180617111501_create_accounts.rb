class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :members_count

      t.timestamps
    end

    add_index :accounts, :name, unique: true
  end
end
