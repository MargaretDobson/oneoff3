class ChargesController < ApplicationController
    def new
    end
    #Shows credit card form using checkout
    #created the actual charges by calling api
    def create
      # Amount in cents
      @amount = params[:price].to_i * 100
    
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
      add_user_balance(params[:price])
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

    def add_user_balance(price)
      user = Product.find(params[:product_id]).user
      user.balance = user.balance + params[price].to_i
      user.save
    end
        
end
