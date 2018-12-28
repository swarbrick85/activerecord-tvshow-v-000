class Show < ActiveRecord::Base 
  
  def self.highest_rating 
    ((self.all.sort_by { |show| show.rating}).reverse[0]).rating
  end 
  
  def self.most_popular_show 
    ((self.all.sort_by { |show| show.rating}).reverse[0])
  end 
  
  def self.lowest_rating
    ((self.all.sort_by { |show| show.rating})[0]).rating
  end 
  
  def self.least_popular_show
    ((self.all.sort_by { |show| show.rating})[0])
  end 
  
  def self.ratings_sum 
    
  end 
end 