class ItemsController < ApplicationController
  # before_action :move_to_index, only: [:new, :create]（備忘録として残します）
  before_action :authenticate_user!, except: [:index, :show]



  def index
    @items = Item.all.order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    if @item.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def create
    @item = Item.create(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end


  # def move_to_index（備忘録として残します）
  #   unless user_signed_in?
  #     redirect_to action: :index
  #   end 
  # end



  private

  def item_params
    params.require(:item).permit(:pro_name, :explanation, :category_id, :condition_id, :deli_money_id, :deli_time_id, :prefecture_id, :price, :image).merge(user_id: current_user.id)
  end

 
end