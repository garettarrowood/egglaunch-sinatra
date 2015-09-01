class CreateRuleVotes < ActiveRecord::Migration
	def change
		create_table   :rule_votes do |t|
			t.belongs_to :team, index: true
			t.belongs_to :rule, index: true
			t.boolean    :yes?
		end
	end
end