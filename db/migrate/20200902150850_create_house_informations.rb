class CreateHouseInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :house_informations do |t|
      t.string :property_name
      t.integer :house_rent
      t.string :adsress
      t.integer :age_of_a_build
      t.text :remark_column

      t.timestamps
    end
  end
end
