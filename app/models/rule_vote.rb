class Rule_vote < ActiveRecord::Base
	belongs_to :team
	belongs_to :rule
end