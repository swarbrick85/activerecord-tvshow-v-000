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
    self.sum(:rating)
  end 
  
  def self.popular_shows
    popular = []
    self.all.each do |show| 
      if show.rating > 5 
        popular << show 
      end 
    end 
    popular 
  end 
  
  def self.shows_by_alphabetical_order 
    self.all.sort_by { |show| show.name }
  end 
end 