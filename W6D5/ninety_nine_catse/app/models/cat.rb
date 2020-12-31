class Cat < ApplicationRecord
    COLORS = ["black", "orange", "white","blue"]
     
    validates :sex, inclusion:%W(M F) 
    validates :birth_date, :color, :name, :sex, presence: true
    validates :color, inclusion: COLORS
    
end
