class ChangeDocumentReferencesFromVariantToProduct < ActiveRecord::Migration[8.1]
  def change
    remove_reference :documents, :variant, foreign_key: true
    add_reference :documents, :product, null: false, foreign_key: true
  end
end
