class Simulation < ActiveRecord::Base
  belongs_to :facilitator
  has_many :simulation_decision_parameters ,:dependent => :destroy
  has_many :simulation_markets ,:dependent => :destroy
end
