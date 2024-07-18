class CausesController < ApplicationController

  def index
    @causes = Cause.all
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
    @cause = Cause.find(params[:id])    
  end

  def edit
    @cause = Cause.find(params[:id])
  end
  
  def update
    @cause = Cause.find(params[:id])

    if @cause.update(cause_params)
      redirect_to cause_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  
  private

  def cause_params
    params.require(:cause).permit(:title, :description, :donate_amount, :goal_amount, :cause_picture, :content)
  end
  
end
