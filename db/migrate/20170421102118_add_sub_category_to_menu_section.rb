class AddSubCategoryToMenuSection < ActiveRecord::Migration[5.0]
  def change
    add_column :menu_sections, :sub_category, :string, null: false, default: ''
  end
end
