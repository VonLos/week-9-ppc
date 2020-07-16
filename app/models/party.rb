class Party < ApplicationRecord
    belongs_to :category
    has_many :parties_supplies
    has_many :supplies, through: :parties_supplies
    accepts_nested_attributes_for :parties_supplies
    
    def private_or_public
        self.private ? "Private" : "Public"
    end 

    def category_name 
        self.category.try(:name)
    end 

    def category_name=(category)
        self.category = Category.find_or_create_by(name: category)
    end

end
