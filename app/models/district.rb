class District < ApplicationRecord
	has_many :schools
	has_many :users

	def self.search(term)
	  where('LOWER(district_name) LIKE :term', term: "%#{term.downcase}%")
	end
end
