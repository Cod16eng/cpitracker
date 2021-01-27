class ParticipantwebinarsController < ApplicationController
  def index
    @participantwebinars = ParticipantWebinar.all
  end

  def upload
    if ParticipantWebinar.upload(params[:file]) == false
      flash[:danger] = "Please check the csv data is incorect or uploded again"
      redirect_to participantwebinars_path
    else
      flash[:success] = "Data uploaded"
      redirect_to participantwebinars_path
    end
  end

  def destroy
    @participantwebinar =  ParticipantWebinar.find(params[:id])
    @participantwebinar.destroy
    flash[:danger] = "Association deleted"
    redirect_to participantwebinars_path
  end
end
