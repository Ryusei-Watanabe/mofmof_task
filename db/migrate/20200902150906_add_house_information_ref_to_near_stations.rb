class AddHouseInformationRefToNearStations < ActiveRecord::Migration[5.2]
  def change
    add_reference :near_stations, :house_information, foreign_key: true
  end
end
