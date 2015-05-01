class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :group_id
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :link
      t.text :about
      t.string :logo

      t.timestamps null: false
    end
    add_index  :events, :group_id
  end
end
