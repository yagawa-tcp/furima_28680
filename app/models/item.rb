class Item < ApplicationRecord

  with_options presence: true do
    validates :pro_name,    format: { with: /\A[ぁ-んァ-ン一-龥]+\z/} 
    validates :explanation, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/}
    validates :price,       format: { with: /\A[0-9]+\z/ }
    validates :category_id, numericality: { other_than: 1 }
  end

end
