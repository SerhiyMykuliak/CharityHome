class DonationsController < ApplicationController
  def new
    @cause = Cause.find(params[:cause_id])
  end

  def create
    @cause = Cause.find(params[:cause_id])
    amount = params[:amount].to_i 
    token = params[:stripeToken]

    charge = Stripe::Charge.create(
      amount: amount,
      currency: 'usd',
      description: 'Donation to Cause',
      source: token
    )

    Donation.create(
      amount: amount,
      stripe_charge_id: charge.id,
      cause: @cause
    )

    redirect_to root_path, notice: 'Thank you for your donation!'
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_donation_path(cause_id: @cause.id)
  end
end
