class CreateSubsubcategories < ActiveRecord::Migration[8.1]
  def change
    create_table :subsubcategories do |t|
      t.string :name
      t.references :subcategory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
