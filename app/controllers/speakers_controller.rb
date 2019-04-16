class SpeakersController < ApplicationController
  before_action :set_speaker, only: [:edit, :show, :update, :destroy]

  def index
    @speakers = Speaker.paginate(page: params[:page], per_page: 10).order('last_name ASC')
  end

  def new
    @speaker = Speaker.new
  end

  def create
    @speaker =  Speaker.new(speaker_params)
    if @speaker.save
      flash[:success] = "Speaker created"
      redirect_to speaker_path(@speaker)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @speaker.update(speaker_params)
      flash[:success] = "Speaker Updated"
      redirect_to speaker_path(@speaker)
    else
      render 'edit'     
    end    
  end

  def show
  end

  def destroy
    @speaker.destroy
    flash[:danger] = "Speaker deleted"
    redirect_to speakers_path
  end
  

  private
  def set_speaker
    @speaker =  Speaker.find(params[:id])
  end

  def speaker_params
    params.require(:speaker).permit(:first_name, :last_name, :email, :qualification, :city, webinar_ids: [])
  end
end
