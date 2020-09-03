class NearStation < ApplicationRecord
   belongs_to :house_information, optional: true
   validates :station_name, length:{in:0..10}

end
