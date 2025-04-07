class CreateSpecifications < ActiveRecord::Migration[8.1]
  def change
    create_table :specifications do |t|
      t.references :variant, null: false, foreign_key: true
      t.decimal :max_op
      t.decimal :max_ap
      t.decimal :max_ot
      t.decimal :max_at
      t.decimal :min_ot
      t.decimal :max_dt
      t.jsonb :specs

      t.timestamps
    end
  end
end
