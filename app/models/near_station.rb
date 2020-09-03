class NearStation < ApplicationRecord
   belongs_to :house_information, optional: true
end
