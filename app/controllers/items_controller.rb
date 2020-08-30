class ItemsController < ApplicationController
  beofre_action :move_to_sign_in, except: [:index, :show]

  def index
  end

  def move_to_sign_in
    unless user_signed_in?
      redirect_to action: :new
    end 
  end
end