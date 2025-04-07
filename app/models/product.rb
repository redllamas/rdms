class Product < ApplicationRecord
  extend Mobility
  translates :name, :description

  belongs_to :subsubcategory
  has_many :variants, dependent: :destroy
  has_many :documents, dependent: :destroy

  accepts_nested_attributes_for :variants, allow_destroy: true
end
