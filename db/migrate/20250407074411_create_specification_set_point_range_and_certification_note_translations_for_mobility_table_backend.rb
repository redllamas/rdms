class CreateSpecificationSetPointRangeAndCertificationNoteTranslationsForMobilityTableBackend < ActiveRecord::Migration[8.1]
  def change
    create_table :specification_translations do |t|

      # Translated attribute(s)
      t.string :set_point_range
      t.string :certification_note

      t.string  :locale, null: false
      t.references :specification, null: false, foreign_key: true, index: false

      t.timestamps null: false
    end

    add_index :specification_translations, :locale, name: :index_specification_translations_on_locale
    add_index :specification_translations, [:specification_id, :locale], name: :index_7015403f99ca6811da1c3998e6de0d81ccda9cab, unique: true

  end
end
