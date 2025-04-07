class ChangeSizesFromStringToArrayVariantSizes < ActiveRecord::Migration[8.1]
  def change
    remove_column :variants, :size_mm, :string
    add_column :variants, :size_mm, :string, array: true, default: [], null: false
  end
end
