class SubUnit < ActiveRecord::Base
  attr_accessible :name, :organization_id
  belongs_to :organization
end
