class AddCategoryToMenuSections < ActiveRecord::Migration[5.0]
  def change
    add_column :menu_sections, :category, :string, default: 'Main Menu'
  end
end
