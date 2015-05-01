class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.integer :group_id
      t.string :name
      t.text :description
      t.string :start_date
      t.string :deadline
      t.string :link

      t.timestamps null: false
    end
    add_index  :positions, :group_id
  end
end
