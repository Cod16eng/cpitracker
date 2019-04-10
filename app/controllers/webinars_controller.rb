class WebinarsController < ApplicationController
  before_action :set_webinar, only: [:edit, :show, :update, :destroy]

  def index
    @webinars = Webinar.all
  end

  def new
    @webinar = Webinar.new
  end

  def create
    @webinar =  Webinar.new(webinar_params)
    if @webinar.save
      flash[:success] = "Webinar created"
      redirect_to webinar_path(@webinar)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @webinar.update(webinar_params)
      flash[:success] = "Webinar Updated"
      redirect_to webinar_path(@webinar)
    else
      render 'edit'     
    end    
  end

  def show
  end

  def destroy
    @webinar.destroy
    flash[:danger] = "Webinar deleted"
    redirect_to webinars_path
  end

  private
  def set_webinar
    @webinar =  Webinar.find(params[:id])
  end

  def webinar_params
    params.require(:webinar).permit(:name, :relatore, :date, :programa)
  end
end

  