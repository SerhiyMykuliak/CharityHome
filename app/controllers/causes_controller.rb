class CausesController < ApplicationController
  before_action :set_cause, only: [:edit, :update, :show, :destroy]

  def index
    @causes = Cause.all.order(created_at: :desc).page(params[:page]).per(4)
    @causes_exists = @causes.present?
  end
  
  def new
    @cause = Cause.new()
  end

  def create
    @cause = Cause.new(cause_params)

    if @cause.save
      redirect_to causes_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show   
  end

  def edit
  end
  
  def update
    if @cause.update(cause_params)
      redirect_to cause_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
  end 

  private

  def cause_params
    params.require(:cause).permit(:title, :description, :donate_amount, :goal_amount, :cause_picture, :content)
  end

  def set_cause
    @cause = Cause.find(params[:id])
  end
  
end
