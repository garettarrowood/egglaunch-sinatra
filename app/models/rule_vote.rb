class Rule_vote < ActiveRecord::Base
	has_one :team
	has_one :rule
end