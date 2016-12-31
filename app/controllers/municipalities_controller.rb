class MunicipalitiesController < ApplicationController
  def index
    @municipalities = Municipality.all
  end

  def show
    @municipality = Municipality.find(params[:id])
  end

  def new
    @municipality = Municipality.new
  end

  def edit
    @municipality = Municipality.find(params[:id])
  end

  def create
    @municipality = Municipality.new(municipality_params)

    if @municipality.save
    redirect_to  municipalities_path
    else
      render "new"
    end
  end

  def update
    @municipality = Municipality.find(params[:id])

    if @municipality.update(municipality_params)
      redirect_to @municipality
    else
      render "edit"
    end
  end

  def destroy
    @municipality = Municipality.find(params[:id])

    @municipality.destroy
    redirect_to municipalities_path
  end

  private
    def municipality_params
      params.require(:municipality).permit(:nombre)
    end

end
