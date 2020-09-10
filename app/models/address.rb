class Address < ApplicationRecord

  belongs_to :buying
  belongs_to_active_hash :prefecture

  
end

