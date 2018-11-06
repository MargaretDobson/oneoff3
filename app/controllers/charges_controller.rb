class ChargesController < ApplicationController
    def new
    end
    #Shows credit card form using checkout
    #created the actual charges by calling api
    def create
      # Amount in cents
      @amount = params[:price].to_i
    
      customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
      )
    
      charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @amount,
        :description => 'Rails Stripe customer',
        :currency    => 'aud'
      )
    
      set_available_to_false(params[:product_id])
      redirect_to root_path

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end

    private
    def set_available_to_false(product_id)
      product = Product.find(product_id)
      product.available = false
      product.save
    end
        
end
