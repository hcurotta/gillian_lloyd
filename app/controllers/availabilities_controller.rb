class AvailabilitiesController < ApplicationController
  def update
    Availability.update_attributes(permitted_params)
  end

  def create
    Availability.create(permitted_params)
  end

  def destroy
    Availability.find(params[:id]).destroy    
  end

  private

  def permitted_params
    params.require(:availability).permit!
  end
end