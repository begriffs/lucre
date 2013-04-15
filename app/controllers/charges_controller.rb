class ChargesController < ApplicationController
  def new
  end

  def create
    charge = Stripe::Charge.create(
      :amount => (params[:amount].to_f * 100).to_i,
      :currency => "usd",
      :card => params[:stripeToken],
      :description => params[:email]
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
end
