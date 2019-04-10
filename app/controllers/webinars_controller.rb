class WebinarsController < ApplicationController
  def index
    @webinars = Webinar.all
  end

  def new
    @webinar = Webinar.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end
end
