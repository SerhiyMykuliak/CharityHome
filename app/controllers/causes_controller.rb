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
      render :new
    end
    
  end
  private

  def cause_params
    params.require(:cause).permit(:title, :description, :donate_amount, :goal_amount, :cause_picture)
  end
  
end
