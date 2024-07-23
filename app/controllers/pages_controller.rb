class PagesController < ApplicationController
  def home
    @feature_cause = Cause.where(donated_amount: Cause.maximum(:donated_amount)).first
    @recent_causes = Cause.order(created_at: :desc).limit(3)
    @volunteers = Volunteer.all
    @photos = PhotoGallery.order(created_at: :desc).limit(8)
  end

  def about
    @volunteers = Volunteer.all
  end

end
