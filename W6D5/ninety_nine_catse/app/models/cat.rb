class Cat < ApplicationRecord
<<<<<<< HEAD
=======
    COLORS = ["black", "orange", "white","blue"]
     
    validates :sex, inclusion:%W(M F) 
    validates :birth_date, :color, :name, :sex, presence: true
    validates :color, inclusion: COLORS
    
>>>>>>> 28586cda111cff1ededaf8bb760acde458168b74
end
