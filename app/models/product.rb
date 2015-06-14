class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true, format: { :with => /\A\d+(?:\.\d{0,2})?\z/ }, numericality: true
  
  def average_rating
    #review_sum = reviews.map(:rating).reduce(:+)
    review_sum = reviews.inject(0) { |sum, review| sum += review.rating }
    return review_sum == 0? 0 : (review_sum.to_f / reviews.count) 
  end
end
