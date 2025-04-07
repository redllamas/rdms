class CreateSubsubcategoryNameTranslationsForMobilityTableBackend < ActiveRecord::Migration[8.1]
  def change
    create_table :subsubcategory_translations do |t|

      # Translated attribute(s)
      t.string :name

      t.string  :locale, null: false
      t.references :subsubcategory, null: false, foreign_key: true, index: false

      t.timestamps null: false
    end

    add_index :subsubcategory_translations, :locale, name: :index_subsubcategory_translations_on_locale
    add_index :subsubcategory_translations, [:subsubcategory_id, :locale], name: :index_b51a721a93d04d29757c1ac80e6ab3e09adf1c69, unique: true

  end
end
