class BuyingsController < ApplicationController

  before_action :finder, only: [:index]
  before_action :authenticate_user!

  def index
    if user_signed_in? && current_user.id == @item.user_id
      redirect_to root_path
    elsif @item.buying.present?
      redirect_to root_path
    end
  end

  def create
    if @buying.create
      redirect_to root_path
    end
  end

  private

  def finder
    @item = Item.find(params[:item_id])
  end


end
