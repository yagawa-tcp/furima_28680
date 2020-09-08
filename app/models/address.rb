class Address < ApplicationRecord

  belongs_to :buying
  belongs_to_active_hash :prefecture

  with options presence :true do
    validates :prefecture_id,   null: false
    validates :city,            null: false
    validates :postal_code,     null: false, format: { with: /\A\d{3}[-]\d{4}\z/ }
    validates :house_num,       null: false
    validates :tel_num,         null: false, length: { maximum: 11 }
    validates :buying,          null: false, foreign_key: true
  end
end

