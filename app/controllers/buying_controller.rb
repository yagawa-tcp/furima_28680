class BuyingController < ApplicationController
  before_action :move_to_new_user_session, except: [:]




  def move_to_new_user_session
    unless user_signed_in?
      redirect_to action: 
  end
end
