class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :university
      t.boolean :active
      t.text :about
      t.string :country
      t.string :city
      t.string :zip_code
      t.string :telephone
      t.string :email
      t.string :fax
      t.string :website
      t.string :logo_url

      t.timestamps null: false
    end
  end
end
