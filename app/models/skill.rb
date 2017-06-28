class Skill < ApplicationRecord
    validates_presence_of :title, :percent_utilized
    
    def set_defaults
        self.badge ||= Placeholder.image_generator(height: '350', width:'250')
    end
end