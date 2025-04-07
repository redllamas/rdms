class CreateVariants < ActiveRecord::Migration[8.1]
  def change
    create_table :variants do |t|
      t.references :product, null: false, foreign_key: true
      t.string :body_material
      t.string :size_mm

      t.timestamps
    end
  end
end
