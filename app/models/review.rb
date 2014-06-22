class Restaurant < ActiveRecord::Base
  belongs_to :restaurants

  validates :rating, presence: true, :inclusion { :in 1..5 }
  validates :body, presence: true
  validates :created_at, presence: true
  validates :restaurant_id, presence: true
end
