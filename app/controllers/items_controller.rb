class ItemsController < ApplicationController
  # before_action :move_to_sign_in, except: [:index]

  def index
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new
    if @item.save
      redirect_to root_path
    else
      index.new
  end

  def move_to_sign_in
    unless user_signed_in?
      redirect_to action: :new
    end 
  end
end

  private

  def registration_params
    params.require(:item).permit(:pro_name, :explanation, :image, :category_id, :condition_id, :deli_money, :deli_time, :prefecture, :price)
  end

end