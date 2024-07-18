class HomeController < ApplicationController
  def index
    @feature_cause = Cause.where(donated_amount: Cause.maximum(:donated_amount)).first
    @recent_causes = Cause.order(created_at: :desc).limit(3)
    @volunteers = Volunteer.all
  end
end
