ActiveRecord::Schema.define(version: 2020_09_02_150906) do

  create_table "house_informations", force: :cascade do |t|
    t.string "property_name"
    t.integer "house_rent"
    t.string "adsress"
    t.integer "age_of_a_build"
    t.text "remark_column"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "near_stations", force: :cascade do |t|
    t.string "route_name"
    t.string "station_name"
    t.integer "minutes_on_foot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "house_information_id"
    t.index ["house_information_id"], name: "index_near_stations_on_house_information_id"
  end

end
