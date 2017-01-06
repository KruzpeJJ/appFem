class MunicipalitiesController < ApplicationController

  before_action :set_municipality, except: [:index, :new,:create]

  def index
    @municipalities = Municipality.all
  end

  def show
  end

  def new
    @municipality = Municipality.new
  end

  def edit
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

    if @municipality.update(municipality_params)
      redirect_to @municipality
    else
      render "edit"
    end
  end

  def destroy

    @municipality.destroy
    redirect_to municipalities_path
  end

  private
    def set_municipality
      @municipality = Municipality.find(params[:id])
    end
    
    def municipality_params
      params.require(:municipality).permit(:nombre)
    end

end
