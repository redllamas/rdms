class Specification < ApplicationRecord
  belongs_to :variant

  validates :max_ot, :max_at, :max_op, :max_ap, :max_dp, :min_op, numericality: true, allow_nil: true

  store_accessor :specs, :set_point_range, :certification_note
end
