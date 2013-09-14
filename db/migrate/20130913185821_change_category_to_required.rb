class ChangeCategoryToRequired < ActiveRecord::Migration
  def up
    change_column :issues, :category, :string, null: false
  end

  def down
    change_column :issues, :category, :string, null: true
  end
end
