class Buying < ApplicationRecord

  belongs_to :users
  has_one    :addresses
  belongs_to :items


  with_options presence: true, foreign_key: true do
    validates :user        
    validates :item       
  end


end
