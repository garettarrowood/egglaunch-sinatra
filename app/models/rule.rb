class Rule < ActiveRecord::Base
	has_many :rule_votes, through: :teams
end