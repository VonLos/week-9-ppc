class Party < ApplicationRecord
    belongs_to :category

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
