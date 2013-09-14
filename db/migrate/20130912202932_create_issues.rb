class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.boolean :is_reproducible
      t.string :category

      t.timestamps
    end
  end
end
