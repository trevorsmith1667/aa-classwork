require 'action_view'
class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper
    
    COLORS = ["black", "orange", "white","blue"]
     
    validates :sex, inclusion:["M","F"]
    validates :birth_date, :color, :name, :sex, presence: true
    validates :color, inclusion: COLORS

    def age 
        time_ago_in_words(birth_date)
    end 
    
end
