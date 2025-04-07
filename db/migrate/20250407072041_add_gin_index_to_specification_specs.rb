class AddGinIndexToSpecificationSpecs < ActiveRecord::Migration[8.1]
  def change
    add_index :specifications, :specs, using: :gin
  end
end
