class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.get_merchants
  end 

  def show 
    @merchant_items = MerchantFacade.get_merchant_items(params[:id].to_i)
  end 
end