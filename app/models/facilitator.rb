class Facilitator < ActiveRecord::Base

  #relationships
  belongs_to :client
  has_many :facilitator_groups
  has_many :case_studies
  has_many :simulations
end
