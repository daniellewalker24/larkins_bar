class CreateMenuSections < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_sections do |t|
      t.string :area
      t.text :content

      t.timestamps
    end
  end
end
