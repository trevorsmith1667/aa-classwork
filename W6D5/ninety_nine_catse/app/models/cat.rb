require 'actionview'
class Cat < ApplicationRecord
ActionView::Helpers::DateHelper
    
    COLORS = ["black", "orange", "white","blue"]
     
    validates :sex, inclusion:%W(M F) 
    validates :birth_date, :color, :name, :sex, presence: true
    validates :color, inclusion: COLORS

    def age 
        time_ago_in_words(birth_date)
    end 
    
end
