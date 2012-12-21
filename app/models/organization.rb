class Organization < ActiveRecord::Base
  attr_accessible :name, :sub_units_attributes
  has_many :sub_units, dependent: :destroy
  accepts_nested_attributes_for :sub_units, allow_destroy: true, reject_if: proc { |a| a["name"].blank? }
  validates_presence_of :name
end
