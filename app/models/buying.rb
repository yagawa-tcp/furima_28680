class Buying < ApplicationRecord

  belongs_to :users
  has_one    :addresses
  belongs_to :items


  with_options presence: true do
    validates :user_id        
    validates :item_id       
  end


end
