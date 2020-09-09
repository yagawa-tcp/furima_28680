class BuyingsController < ApplicationController

  before_action :finder, only: [:index]
  before_action :authenticate_user!

  def index
    @buying = Buying.new
    if user_signed_in? && current_user.id == @item.user_id
      redirect_to root_path
    elsif @item.buying.present?
      redirect_to root_path
    end
  end

  def create
    @buying = Buying.new(buying_params)
    @address = Address.new(address_params)
    if @buying.create
      redirect_to root_path
    else
      render :index
    end
  end

  

  private

  def finder
    @item = Item.find(params[:item_id])
  end


end
