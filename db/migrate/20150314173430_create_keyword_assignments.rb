class CreateKeywordAssignments < ActiveRecord::Migration
  def change
    create_table :keyword_assignments do |t|
      t.integer :keyword_id
      t.integer :group_id
      t.integer :event_id
      t.integer :scientist_id
      t.integer :position_id

      t.timestamps null: false
    end
    add_index  :keyword_assignments, :keyword_id
    add_index  :keyword_assignments, :group_id
    add_index  :keyword_assignments, :event_id
    add_index  :keyword_assignments, :scientist_id
    add_index  :keyword_assignments, :position_id
  end
end
