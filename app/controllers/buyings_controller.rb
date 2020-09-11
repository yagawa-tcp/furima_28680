class BuyingsController < ApplicationController

  before_action :finder, only: [:index, :create]
  before_action :authenticate_user!

  def index
    @buying = BuyerData.new
    if user_signed_in? && current_user.id == @item.user_id
      redirect_to root_path
    elsif @item.buying.present?
      redirect_to root_path
    end
  end

  def create
    @buying = BuyerData.new(buyer_params)
    if @buying.valid? 
      pay_item
      @buying.save
      return redirect_to root_path
    else
      render 'index'
    end
  end

  

  private

  def finder
    @item = Item.find(params[:item_id])
  end

  def buyer_params
    params.require(:buyer_data).permit(:prefecture_id, :city, :postal_code, :house_num, :building, :tel_num, :buying_id, :price, :item_id, :user_id, :token)
  end

  def pay_item
    Payjp.api_key = 'sk_test_cd4fcf82fe5af78bb0b0c7f1'
    Payjp::Charge.create(
      amount: buyer_params[@item.price],  # 商品の値段
      card: buyer_params[:token],    # カードトークン
      currency:'jpy'                 # 通貨の種類(日本円)
    )
  end

end
