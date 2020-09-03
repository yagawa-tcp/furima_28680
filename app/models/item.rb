class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :condition
  belongs_to_active_hash :deli_money
  belongs_to_active_hash :deli_time
  belongs_to_active_hash :prefecture
  has_one_attached :image


  with_options presence: true do
    validates :pro_name,    format: { with: /\A[ぁ-んァ-ン一-龥]+\z/} 
    validates :explanation, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/}
    validates :price,       format: { with: /\A[0-9]+\z/ }
    validates :category_id, :condition_id, :deli_money, :deli_taime, :prefecture, numericality: { other_than: 1 }
  end

end
