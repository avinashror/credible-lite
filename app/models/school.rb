class School < ApplicationRecord
	has_and_belongs_to_many :lenders
	def self.search(term)
  		where('LOWER(instnm) LIKE :term', term: "%#{term.downcase}%")
	end
end
