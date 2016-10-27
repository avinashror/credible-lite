class Product < ActiveRecord::Base
  belongs_to :lender

  def eligible?(submission)
  	school = School.where(:instnm => submission.school).first
  	(school.lenders.include? self.lender) &&  (submission.income >= self.min_income) && (submission.credit_score >= self.min_credit_score)
  end
end
