class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :value

      t.timestamps
    end
    add_index :searches, :value, unique: true
  end
end
