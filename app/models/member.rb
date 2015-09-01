class Member < ActiveRecord::Base
	belongs_to :team

	before_create { |m| m.slug = m.to_slug }

	def to_slug
		self.name.downcase.split.join('-')
	end
end