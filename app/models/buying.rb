class Buying < ApplicationRecord

  belongs_to :user
  has_one    :addresse
  belongs_to :item


  with_options presence: true do
    validates :user_id        
    validates :item_id       
  end


end
