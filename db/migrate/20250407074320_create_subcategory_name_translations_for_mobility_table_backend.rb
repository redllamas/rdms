class CreateSubcategoryNameTranslationsForMobilityTableBackend < ActiveRecord::Migration[8.1]
  def change
    create_table :subcategory_translations do |t|

      # Translated attribute(s)
      t.string :name

      t.string  :locale, null: false
      t.references :subcategory, null: false, foreign_key: true, index: false

      t.timestamps null: false
    end

    add_index :subcategory_translations, :locale, name: :index_subcategory_translations_on_locale
    add_index :subcategory_translations, [:subcategory_id, :locale], name: :index_subcategory_translations_on_subcategory_id_and_locale, unique: true

  end
end
