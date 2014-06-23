class Restaurant < ActiveRecord::Base
  has_many :reviews

  validates :name, null: false
  validates :address, null: false
  validates :city, null: false
  validates :zip_code, null: false
end
