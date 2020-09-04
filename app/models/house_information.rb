class HouseInformation < ApplicationRecord
  has_many :near_stations, dependent: :destroy
  accepts_nested_attributes_for :near_stations, allow_destroy: true
  with_options presence: true do
    validates :property_name
    validates :house_rent
    validates :adsress
    validates :age_of_a_build
    validates :remark_column
  end
end
