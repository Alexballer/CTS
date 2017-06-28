class Portfolio < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image
  
  def self.angular
    where(subtitle: 'angular')
  end
  
  scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on Rails') }
  
  after_initalize :set_defaults
  
  def set_defaults
    self.main_image ||=Placeholder.image_generator(height: '350', width:'250')
    self.thumb_image ||=Placeholder.image_generator(height: '350', width:'250')
  end
end