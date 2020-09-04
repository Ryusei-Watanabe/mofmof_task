class HouseInformationsController < ApplicationController
  before_action :set_house_information, only: [:show, :edit, :update, :destroy]
  def index
    @house_informations = HouseInformation.all
  end
  def show
  end
  def new
    @house_information = HouseInformation.new
    @house_information.near_stations.build
  end
  def edit
    @house_information.near_stations.build
  end
  def create
    @house_information = HouseInformation.new(house_information_params)
    respond_to do |format|
      if @house_information.save
        format.html { redirect_to @house_information, notice: 'House information was successfully created.' }
        format.json { render :show, status: :created, location: @house_information }
      else
        format.html { render :new }
        format.json { render json: @house_information.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    respond_to do |format|
      if @house_information.update(house_information_params)
        format.html { redirect_to @house_information, notice: 'House information was successfully updated.' }
        format.json { render :show, status: :ok, location: @house_information }
      else
        format.html { render :edit }
        format.json { render json: @house_information.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @house_information.destroy
    respond_to do |format|
      format.html { redirect_to house_informations_url, notice: 'House information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
  def save_near_astion

  end
  def set_house_information
    @house_information = HouseInformation.find(params[:id])
  end
  def house_information_params
    params.require(:house_information).permit(
      :property_name,
      :house_rent,
      :adsress,
      :age_of_a_build,
      :remark_column,
      near_stations_attributes: [:id,
                                  :route_name,
                                  :station_name,
                                  :minutes_on_foot])
  end
end
