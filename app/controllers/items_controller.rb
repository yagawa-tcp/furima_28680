class ItemsController < ApplicationController
  # beofre_action :move_to_sign_in, except: [:index]

  def index
  end

  def new
    @users = User.new
  end


  def create
    @users = User.create
  end

  def move_to_sign_in
    unless user_signed_in?
      redirect_to action: :new
    end 
  end

  private

end
