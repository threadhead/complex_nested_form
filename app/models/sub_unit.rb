class SubUnit < ActiveRecord::Base
  attr_accessible :name, :organization_id
  belongs_to :organization

  validates :name,
            presence: true,
            uniqueness: { scope: :organization_id }

end
