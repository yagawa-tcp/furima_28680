class ItemsController < ApplicationController
  # before_action :move_to_index, only: [:new, :create]
  before_action :authenticate_user!, except: [:index]

  def index
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(registration_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  # def move_to_index
  #   unless user_signed_in?
  #     redirect_to action: :index
  #   end 
  # end



  private

  def registration_params
    params.require(:item).permit(:pro_name, :explanation, :category_id, :condition_id, :deli_money_id, :deli_time_id, :prefecture_id, :price, :image).merge(user_id: current_user.id)
  end

end