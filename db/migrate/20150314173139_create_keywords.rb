class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.string :name
      t.text :description #keyword: format of save - deal with appreviations - who can create?

      t.timestamps null: false
    end
  end
end
