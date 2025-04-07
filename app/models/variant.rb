class Variant < ApplicationRecord
  belongs_to :product
  has_one :specification, dependent: :destroy

  accepts_nested_attributes_for :specification, allow_destroy: true
end
