class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :condition
  belongs_to_active_hash :deli_money
  belongs_to_active_hash :deli_time
  belongs_to_active_hash :prefecture
  has_one_attached :image
  has_many   :comments
  belongs_to :user
  has_many   :favorites
  has_one    :buying



    validates :image,          presence: true 
    validates :pro_name,       presence: true, length: { maximum: 40 }
    validates :explanation,    presence: true 
    # validates :pro_name,    format: { with: /\A[ぁ-んァ-ン一-龥]+\z/} 
    # validates :explanation, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/}
    validates :price,       numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, message: "is out of setting range" }  
    validates :category_id, :condition_id, :deli_money_id, :deli_time_id, :prefecture_id, numericality: { other_than: 1 }


end
