class CreateMembers < ActiveRecord::Migration
	def change
		create_table   :members do |t|
			t.string     :slug
			t.string     :name
			t.string     :email
			t.string     :password
			t.belongs_to :team, index: true
		end
	end
end