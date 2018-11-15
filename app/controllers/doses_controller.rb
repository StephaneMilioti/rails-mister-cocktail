class DosesController < ApplicationController

  def create
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to dose_path
    else
      render :new
    end
  end

  def new
    @dose = dose.new
  end
end
