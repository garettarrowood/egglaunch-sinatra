class CreateRules < ActiveRecord::Migration
	def change
		create_table :rules do |t|
			t.string   :content
			t.boolean  :affirmed?
		end
	end
end