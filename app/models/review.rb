class Review < ActiveRecord::Base
  belongs_to :restaurant

  # validates_numericality_of :rating, presence: true, :only_integer => true,
  #   :message => "can only be whole number."
  # validates_inclusion_of :rating, :in => 1..5,
  #   :message => "can only be between 1 and 5."

  validates :rating, presence: true
  validates :body, presence: true
  validates :created_at, presence: true
  validates :restaurant_id, presence: true
end
