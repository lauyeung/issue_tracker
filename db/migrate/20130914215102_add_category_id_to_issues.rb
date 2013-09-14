class AddCategoryIdToIssues < ActiveRecord::Migration
  def up
    # Add the new column to store the Category's id
    add_column :issues, :category_id, :integer

    # Remove the old string column we were using to store the category
    remove_column :issues, :category
  end

  def down
    remove_column :issues, :category_id

    add_column :issues, :category, :string
  end
end
