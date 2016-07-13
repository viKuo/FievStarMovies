class Movie < ActiveRecord::Base
  has_many :reviews
  has_many :ratings

  def average_rating
    if number_of_reviews == 0
      return 0
    else
      total = 0
      self.ratings.each do |rat|
        total += rat.rating
      end
      total/number_of_reviews
    end
  end

  def number_of_reviews
    self.reviews.count
  end

end