class VolunteersController < ApplicationController
  before_action :set_volunteer, only: [:edit, :update, :show, :destroy]
  before_action :authenticate_admin, only: [:edit, :new, :create, :edit, :update, :destroy]

  def index
    @volunteers = Volunteer.all.page(params[:pages]).per(8)
  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(volunteer_params)

    if @volunteer.save
      redirect_to volunteers_path, notice: "Volunteer succesfuly created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end
  
  def update
    if @volunteer.update(volunteer_params)
      redirect_to volunteer_path, notice: "Volunteer succesfuly updated"
    else  
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @volunteer.destroy!
    redirect_to volunteers_path, notice: "Volunteer succesfuly deleted"
  end

  private

  def volunteer_params
    params.require(:volunteer).permit(:name, :job, :description, :facebook_url, :twitter_url, :linkedin_url, :profile_picture, :content)
  end

  def set_volunteer
    @volunteer = Volunteer.find(params[:id])
  end
  

end
