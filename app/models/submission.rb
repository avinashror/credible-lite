class Submission < ActiveRecord::Base
  has_many :offers, dependent: :destroy

  def calculate_products!
    Submission.transaction do
      self.offers.clear

      Product.all.each do |product|
        next unless product.eligible?(self)
        puts "after elegible *********************8"
        puts product.inspect
        self.offers.create! product: product, term: product.term, apr: product.apr
      end
    end
  end
end
