class ParticipantsController < ApplicationController
  before_action :set_participant, only: [:edit, :show, :update, :destroy]

  def index
    
    @participants = Participant.search(params[:search]).paginate(page: params[:page], per_page: 10).order('last_name ASC')

  end

  def new
    @participant = Participant.new
        
  end

  def create    
    @participant =  Participant.new(participant_params)    
    
    if @participant.save
      flash[:success] = "Participant created"
      redirect_to participant_path(@participant)
    else
      render 'new'
    end
  end

  def edit
    
    
  end

  def update    
    if @participant.update_attributes(participant_params)    
      
      flash[:success] = "Participant Updated"
      redirect_to participant_path(@participant)
    else
      render 'edit'     
    end    
  end

  def show
  end

  def destroy
    @participant.destroy
    flash[:danger] = "Participant deleted"
    redirect_to participants_path
  end

  def import
    Participant.import(params[:file])
    flash[:success] = "Participants added via import"
    redirect_to participants_path
  end

  private
  def set_participant
    @participant =  Participant.find(params[:id])
  end

  def participant_params
    params.require(:participant).permit(:first_name, :last_name, 
      :email, :qualification, :city, :ascherip, :file, {webinar_ids: []}, participant_webinars_attributes: [:id, :connected, :participant_id, :webinar_id, :_destroy])
  end
end