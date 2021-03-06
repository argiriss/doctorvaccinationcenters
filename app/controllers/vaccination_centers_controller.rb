class VaccinationCentersController < ApplicationController
  before_action :set_vaccination_center, only: %i[ show edit update destroy ]

  def index
    @vaccination_centers = VaccinationCenter.all
  end

  def show
  end

  def new
    @vaccination_center = VaccinationCenter.new
  end

  def edit
  end

  def create
    @vaccination_center = VaccinationCenter.new(vaccination_center_params)

    respond_to do |format|
      if @vaccination_center.save
        format.html { redirect_to @vaccination_center, notice: "Vaccination center was successfully created." }
        format.json { render :show, status: :created, location: @vaccination_center }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vaccination_center.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @vaccination_center.update(vaccination_center_params)
        format.html { redirect_to @vaccination_center, notice: "Vaccination center was successfully updated." }
        format.json { render :show, status: :ok, location: @vaccination_center }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vaccination_center.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @vaccination_center.destroy
    respond_to do |format|
      format.html { redirect_to vaccination_centers_url, notice: "Vaccination center was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_vaccination_center
      @vaccination_center = VaccinationCenter.find(params[:id])
    end

    def vaccination_center_params
      params.require(:vaccination_center).permit(:name, :address, :zip)
    end
end
