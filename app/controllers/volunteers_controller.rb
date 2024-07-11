class VolunteersController < ApplicationController
 

  def index
    @volunteers = Volunteer.all
  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(volunteer_params)

    if @volunteer.save
      redirect_to volunteers_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @volunteer = Volunteer.find(params[:id])
  end

  def edit
    @volunteer = Volunteer.find(params[:id])
  end
  
  def update
    @volunteer = Volunteer.find(params[:id])

    if @volunteer.update(volunteer_params)
      redirect_to volunteer_path
    else  
      render :new, status: :unprocessable_entity
    end
  end

  

  private

  def volunteer_params
    params.require(:volunteer).permit(:name, :job, :description, :facebook_url, :twitter_url, :linkedin_url, :profile_picture)
  end

end
