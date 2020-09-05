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


  with_options presence: true do
    validates :image     
    validates :pro_name,       length: { maximum: 40 }
    validates :explanation   
    validates :price,          format: { with: /\A[0-9]+\z/ }, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, message: "is out of setting range" } 
    end

    validates :category_id, :condition_id, :deli_money_id, :deli_time_id, :prefecture_id, numericality: { other_than: 1 }


end
