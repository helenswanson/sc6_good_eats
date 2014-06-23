class Review < ActiveRecord::Base
  belongs_to :restaurant

  # validates_numericality_of :rating, presence: true, :only_integer => true,
  #   :message => "can only be whole number."
  # validates_inclusion_of :rating, :in => 1..5,
  #   :message => "can only be between 1 and 5."

  validates :rating, null: false
  validates :body, null: false
  validates :created_at, null: false
  validates :restaurant_id, null: false
end
