class CreateDocuments < ActiveRecord::Migration[8.1]
  def change
    create_table :documents do |t|
      t.references :variant, null: false, foreign_key: true
      t.string :title
      t.string :format
      t.string :language

      t.timestamps
    end
  end
end
