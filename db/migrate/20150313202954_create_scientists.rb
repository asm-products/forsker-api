class CreateScientists < ActiveRecord::Migration
  def change
    create_table :scientists do |t|
      t.integer :group_id
      t.string :first_name
      t.string :last_name
      t.string :prefix
      t.string :position
      t.date :in_group_since
      t.string :image
      t.string :website
      t.string :twitter
      t.string :linkedin
      t.string :google_scholar
      t.string :email
      t.string :telephone
      #t.boolean :telephone_visible # visibility permission has to be thought of
      t.text :about
      t.timestamps null: false
    end
    add_index  :scientists, :group_id
  end
end
