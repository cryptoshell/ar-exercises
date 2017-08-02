class Store < ActiveRecord::Base
    has_many :employees
    validates :name, length: {minimum: 3}
    validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
    validate :if_apparel?

    private
    def if_apparel?
      if !womens_apparel && !mens_apparel
        errors.add :gender_apparel?, 'The store does not carry neither men\'s nor women\'s apparel'
      end    
    end
end
